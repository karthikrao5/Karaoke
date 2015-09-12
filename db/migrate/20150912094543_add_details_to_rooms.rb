class AddDetailsToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :title, :string
    add_column :rooms, :category, :string
  end
end
