class Tweet < ActiveRecord::Base
    validates :content, length: { in: 0..140 }
    
    belongs_to :user
    has_many :comments, dependent: :destroy
    
    mount_uploader :image, AvatarUploader
end
