class Place < ActiveRecord::Base
    # validates :name, :description, presence: true
    # validates :latitude, format: { with: /\A35\.?\d{0,6}\z/ }
    # validates :longitude, format: { with: /\A139|140\.?\d{0,6}\z/ }
    
    # belongs_to :user
    # has_many :placecomments, dependent: :destroy
end