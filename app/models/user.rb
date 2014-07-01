class User < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true

  def name
    "#{first_name} #{last_name}"
  end

  def thumbnail
    photo_url(:thumb).to_s
  end
end
