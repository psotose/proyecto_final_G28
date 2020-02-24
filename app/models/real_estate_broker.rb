class RealEstateBroker < ApplicationRecord
    has_many :opinions
    has_many :users, through: :opinions
end
