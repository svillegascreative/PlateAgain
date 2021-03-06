class Comment < ApplicationRecord
  belongs_to :user, class_name: "User", foreign_key: :user_id
  belongs_to :reviewer, class_name: "User", foreign_key: :reviewer_id

  validates_presence_of :comments, :message => 'You must input something'
end
