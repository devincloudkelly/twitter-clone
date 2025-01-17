class Micropost < ApplicationRecord
  belongs_to :user
  has_one_attached :image #This is an active_storage API method, allowing us to attach one image to each micropost
  # The line below is a Proc/lambda. It is an anonymous function
  default_scope -> { order(created_at: :desc) } # This sets the default order that we access the database for this model, in this case DESC created_at
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  validates :image, content_type: {  in: %w[image/jpeg image/gif image/png],
                                      message: "must be a valid image format(jpeg, gif or png)" },
                      size: { less_than: 5.megabytes,
                              message: "should be less than 5MB"}

  # Returns a resized image for display
  def display_image
    image.variant(resize_to_limit: [500, 500])
  end
                            
end
