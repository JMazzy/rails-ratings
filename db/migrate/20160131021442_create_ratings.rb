class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :place_id
      t.integer :user_id
      t.integer :star_rating
      t.string :title
      t.text :review

      t.timestamps null: false
    end
  end
end
