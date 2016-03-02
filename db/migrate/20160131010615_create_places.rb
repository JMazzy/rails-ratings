class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.text :description
      t.string :street_address
      t.string :city
      t.string :state
      t.string :country
      t.string :zip_code
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
