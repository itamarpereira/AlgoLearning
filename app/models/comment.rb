class Comment < ApplicationRecord
  belongs_to :progress

  validates :description, presence: true, length: { in: 5..280 }
end
