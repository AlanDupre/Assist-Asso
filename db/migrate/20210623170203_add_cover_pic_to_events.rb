class AddCoverPicToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :cover_pic, :string
  end
end
