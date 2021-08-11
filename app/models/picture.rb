class Picture < ApplicationRecord

    belongs_to :user
    has_many :favorites, dependent: :destroy
    has_many :favorite_users, through: :favorites, source: :user

    mount_uploader :image_topic, ImageTopicUploader

    validates :content, presence: true
    validates :image_topic, presence: false

end
