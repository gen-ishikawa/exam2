class Tweet < ActiveRecord::Base
    validates :content, length: { in: 0..140 }
    
    belongs_to :user
    
    mount_uploader :image, AvatarUploader
end
