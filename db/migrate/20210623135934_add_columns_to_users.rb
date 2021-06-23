class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :last_name, :string
    add_column :users, :address, :string
    add_column :users, :CP, :string
    add_column :users, :city, :string
    add_column :users, :avatar, :string
  end
end
