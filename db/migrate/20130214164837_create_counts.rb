class CreateCounts < ActiveRecord::Migration
  def change
    create_table :counts do |t|
      t.date :record_date
      t.timestamps
    end
  end
end
