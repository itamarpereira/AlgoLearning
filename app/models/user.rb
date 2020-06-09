class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :progressess
  has_many :courses, through: :progressess
  has_many :comments, through: :progressess
  has_one_attached :photo

  validates :username, presence: true, uniqueness: true
end
