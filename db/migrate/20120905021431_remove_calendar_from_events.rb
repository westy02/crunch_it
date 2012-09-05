class RemoveCalendarFromEvents < ActiveRecord::Migration
  def change
  change_table :events do |t|
      t.remove :all_day, :default => false
      t.remove :color
    end
  end
end
