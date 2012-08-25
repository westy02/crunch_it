class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.text :details
      t.integer :user_id

      t.timestamps
    end
  end
end
