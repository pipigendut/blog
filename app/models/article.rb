class Article < ApplicationRecord
  validates :text, presence: true
  validates :image, file_size: { less_than: 1.megabytes }
  mount_uploader :image, ImageUploader

  belongs_to :user, optional: true
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
end
