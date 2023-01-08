class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :content, dependent: :destroy
  has_many :text, dependent: :destroy
  has_many :picture, dependent: :destroy
end
