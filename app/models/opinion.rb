class Opinion < ApplicationRecord
  belongs_to :user
  belongs_to :real_estate_broker

  validates :rating, inclusion: 1..5
  validates :comment, length: {minimum: 10}
end
