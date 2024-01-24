class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
          has_many :listings, dependent: :destroy
          has_many :requests, dependent: :destroy
          validates :first_name, presence: true
          validates :last_name, presence: true
          validates :email, presence: true
          validates :bio, length: { maximum: 500}
          validates :password, length: { minimum: 6 }
          validates :password_confirmation, length: { minimum: 6 }

end
