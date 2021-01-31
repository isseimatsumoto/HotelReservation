class AddNewColumnToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :introduction, :text
    add_column :rooms, :fee, :integer
    add_column :rooms, :address, :string
    add_column :rooms, :image_name, :string
  end
end
