<<<<<<< HEAD
=======
class AddColumnsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :bio, :text
    add_column :users, :avatar_url, :string, :default => 'https://i.imgflip.com/1i34wa.jpg'
    #Ex:- :default =>''
  end
end
>>>>>>> fe7aef3cde5bd8bdf735503dfc2076811e1c20d6
