class RealEstateBroker < ApplicationRecord
    has_many :opinions
    has_many :users, through: :opinions 
    validates_uniqueness_of :rut
    has_one_attached :image
end
