class Micropost < ApplicationRecord
  belongs_to :user
  # The line below is a Proc/lambda. It is an anonymous function
  default_scope -> { order(created_at: :desc) } # This sets the default order that we access the database for this model, in this case DESC created_at
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
end
