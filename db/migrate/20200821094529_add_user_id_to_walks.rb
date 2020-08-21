class AddUserIdToWalks < ActiveRecord::Migration[6.0]
  def change
    add_column :walks, :user_id, :string
    add_column :walks, :integer, :string
  end
end
