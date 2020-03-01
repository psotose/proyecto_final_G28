class RealEstateBroker < ApplicationRecord
    has_many :opinions, dependent: :destroy
    belongs_to :user 
    validates_uniqueness_of :rut
    has_one_attached :image
end
