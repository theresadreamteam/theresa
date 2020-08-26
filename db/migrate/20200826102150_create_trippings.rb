class CreateTrippings < ActiveRecord::Migration[6.0]
  def change
    create_table :trippings do |t|
      t.belongs_to :walk, null: false, foreign_key: true
      t.belongs_to :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
