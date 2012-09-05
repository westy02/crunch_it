class EventDateSplit < ActiveRecord::Migration
 def change
    change_table :events do |t|
      t.remove :start_at
      t.remove :end_at
      t.date :start_at
      t.date :end_at
      t.time  :start_time
      t.time  :end_time
      
    end
  end
end
