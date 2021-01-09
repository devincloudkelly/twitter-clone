class Micropost < ApplicationRecord
  belongs_to :user
  has_one_attached :image #This is an active_storage API method, allowing us to attach one image to each micropost
  # The line below is a Proc/lambda. It is an anonymous function
  default_scope -> { order(created_at: :desc) } # This sets the default order that we access the database for this model, in this case DESC created_at
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
end
