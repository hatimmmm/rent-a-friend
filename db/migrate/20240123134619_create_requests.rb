class CreateRequests < ActiveRecord::Migration[7.1]
  def change
    create_table :requests do |t|
      t.string :message
<<<<<<< HEAD:db/migrate/20240123114619_create_requests.rb
      t.references :user, :listing, null: false, foreign_key: true
=======
      t.references :user , null: false, foreign_key: true
      t.references :listing , null: false, foreign_key: true
>>>>>>> 1d0dbf2281cdcc5233c51ce2a1e7ef8be4a7e25b:db/migrate/20240123134619_create_requests.rb

      t.timestamps
    end
  end
end
