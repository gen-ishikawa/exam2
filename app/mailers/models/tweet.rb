class Tweet < ActiveRecord::Base
    # validates :content, length: { in: 0..140 }
    validates :content, presence: true
    
    belongs_to :user
    has_many :comments, dependent: :destroy
    
    mount_uploader :image, AvatarUploader
end
