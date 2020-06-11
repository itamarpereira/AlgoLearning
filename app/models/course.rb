class Course < ApplicationRecord
  has_many :progresses
  has_many :users, through: :progresses
  has_many :comments, through: :progresses
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :category, presence: true
  validates :difficulty, presence: true
end
