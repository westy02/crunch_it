class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.date :start_at
      t.date :end_at
      t.time  :start_time
      t.time  :end_time
      t.integer :user_id
      t.integer :job_id

      t.timestamps
    end
  end
end
