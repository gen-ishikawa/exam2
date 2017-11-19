class AddInformationToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :information, :string
    add_column :places, :address, :string
  end
end
