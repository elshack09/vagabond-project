class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :posts
  has_many :cities, through: :posts

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
