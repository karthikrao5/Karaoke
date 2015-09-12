class AddUsernameToGuests < ActiveRecord::Migration
  def change
      add_column :guests, :username, :string
  end
end
