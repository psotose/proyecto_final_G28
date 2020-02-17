class Opinion < ApplicationRecord
  belongs_to :user
  belongs_to :real_estate_broker
end
