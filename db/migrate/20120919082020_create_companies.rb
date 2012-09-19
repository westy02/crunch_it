class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :email
      t.string :website
      t.string :address
      t.string :ip
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
