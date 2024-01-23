class CreateRequests < ActiveRecord::Migration[7.1]
  def change
    create_table :requests do |t|
      t.string :message
      t.references :user, :listing

      t.timestamps
    end
  end
end
