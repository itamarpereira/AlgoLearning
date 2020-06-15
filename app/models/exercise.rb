class Exercise < ApplicationRecord
  has_rich_text :code

  belongs_to :course
end
