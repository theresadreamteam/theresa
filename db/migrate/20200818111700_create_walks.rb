class CreateWalks < ActiveRecord::Migration[6.0]
  def change
    create_table :walks do |t|
      t.string :title
      t.text :description
      t.string :coordinates_start
      t.string :coordinates_end
      t.string :distance
      t.string :link

      t.timestamps
    end
  end
end
