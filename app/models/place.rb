class Place < ActiveRecord::Base
    validates :name, :description, :latitude, :longitude, presence: true
    
    belongs_to :user
    has_many :placecomments, dependent: :destroy
end