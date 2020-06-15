class Comment < ApplicationRecord
  acts_as_votable

  belongs_to :progress

  validates :description, presence: true, length: { in: 5..280 }
end
