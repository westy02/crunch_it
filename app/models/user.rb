class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :firstname, :lastname, :role_ids, :country, :state, :city, :latitude, :longitude, :location, :ip
  # attr_accessible :title, :body
  has_many :jobs
  has_many :events
  has_many :assignments
  has_many :roles, :through => :assignments
  has_many :relationships, :foreign_key => "follower_id",
                           :dependent => :destroy
  has_many :following, :through => :relationships, :source => :followed
  has_many :reverse_relationships, :foreign_key => "followed_id",
                                   :class_name => "Relationship",
                                   :dependent => :destroy
  has_many :followers, :through => :reverse_relationships, :source => :follower
  
  geocoded_by :ip   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates
  
  reverse_geocoded_by :lat, :lon
  after_validation :reverse_geocode  # auto-fetch address
   
  #def location
  #[country, state, city ].compact.join(', ')
  #end
   
  def feed
    Jobsheet.from_users_followed_by(self)
  end
  
  def following?(followed)
    relationships.find_by_followed_id(followed)
  end

  def follow!(followed)
    relationships.create!(:followed_id => followed.id)
  end
  
  def unfollow!(followed)
    relationships.find_by_followed_id(followed).destroy
  end
  
  def full_name
  [firstname, lastname].join(' ')
end

def full_name=(name)
  split = name.split(' ', 2)
  self.firstname = split.first
  self.lastname = split.last
end
end
