class Course < ApplicationRecord
  has_many :progressess
  has_many :users, through: :progressess
  has_many :comments, through: :progressess
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :category, presence: true
  validates :difficulty, presence: true
end
