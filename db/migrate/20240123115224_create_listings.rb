class CreateListings < ActiveRecord::Migration[7.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :content
      t.string :image_url
      t.references :user

      t.timestamps
    end
  end
end
