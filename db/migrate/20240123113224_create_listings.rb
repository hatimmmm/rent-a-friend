<<<<<<< HEAD
=======
class CreateListings < ActiveRecord::Migration[7.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :content
      t.string :image_url
      t.integer :price
      t.boolean :availability, default: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
>>>>>>> fe7aef3cde5bd8bdf735503dfc2076811e1c20d6
