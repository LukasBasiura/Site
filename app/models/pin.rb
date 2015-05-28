class Pin < ActiveRecord::Base

  has_attached_file :image, styles: {medium: "320x240>"}
  validates :description, presence: true
  validates_attachment :image, presence: true,
                       content_type:{content_type: ['image/jpeg','image/jpeg','image/png','image/gif'] },
                       size: {less_than: 5.megabytes }

  belongs_to :user
  validates :user_id, presence: true

end
