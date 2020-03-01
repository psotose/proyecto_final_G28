class RealEstateBroker < ApplicationRecord
    

    has_many :opinions, dependent: :destroy
    belongs_to :user 
    has_one_attached :image
    
    
    validates_uniqueness_of :rut
end
