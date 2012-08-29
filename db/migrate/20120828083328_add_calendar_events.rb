class AddCalendarEvents < ActiveRecord::Migration
  def change
    change_table :events do |t|
      t.boolean :all_day, :default => false
      t.string :color
      
    end
  end
end
