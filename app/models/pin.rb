class Pin < ActiveRecord::Base



  has_attached_file :image, :style => { :thumb => '120x120#', :medium => '300x400>' }
  validates :description, presence: true
  validates_attachment :image, presence: true,
                       content_type:{content_type: ['image/jpeg','image/jpeg','image/png','image/gif'] },
                       size: {less_than: 5.megabytes }

  belongs_to :user
  validates :user_id, presence: true
  has_many :comments
end
