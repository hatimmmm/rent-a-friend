class CreateRequests < ActiveRecord::Migration[7.1]
  def change
    create_table :requests do |t|
      t.string :message
      t.boolean :accepted, default: false
      t.references :user , null: false, foreign_key: true
      t.references :listing , null: false, foreign_key: true

      t.timestamps
    end
  end
end
