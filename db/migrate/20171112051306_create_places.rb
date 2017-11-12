class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :description
      t.float :latitude
      t.float :longitude
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
