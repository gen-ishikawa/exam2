class Place < ActiveRecord::Base
    # validates :name, :description, presence: true
    validates :name, :description, :latitude, :longitude, presence: true
    validates :latitude, format: { with: /\A35\.?\d{0,6}\z/ }, allow_blank: true
    validates :longitude, format: { with: /\A139|140\.?\d{0,6}\z/ }, allow_blank: true
    
    belongs_to :user
    has_many :placecomments, dependent: :destroy
end