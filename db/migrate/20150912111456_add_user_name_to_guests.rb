class AddUserNameToGuests < ActiveRecord::Migration
  def change
      add_column :guests, :user_name, :string
  end
end
