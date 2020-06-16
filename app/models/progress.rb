class Progress < ApplicationRecord
  belongs_to :user
  belongs_to :course
  has_many :comments

  STATUS = ['Not Started', 'Ongoing', 'Finished']

  validates :status, presence: true, inclusion: { in: STATUS }
  validates :user, uniqueness: { scope: :course, message: "Course already in progress or finished"}
end
