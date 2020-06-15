class Course < ApplicationRecord
  acts_as_taggable_on :tags

  has_rich_text :body
  has_rich_text :code

  has_many :progresses
  has_many :users, through: :progresses
  has_many :comments, through: :progresses

  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :category, presence: true
  validates :difficulty, presence: true
end

