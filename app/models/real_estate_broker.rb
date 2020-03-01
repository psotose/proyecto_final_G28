class RUTValidator < ActiveModel::Validator
    require 'chilean_rut'
    def validate(record)
      unless RUT::validate(record.rut)
        record.errors[:rut] << 'El rut es invalido'
      end
    end
end
  
class RealEstateBroker < ApplicationRecord
    include ActiveModel::Validations

    has_many :opinions, dependent: :destroy
    belongs_to :user 
    has_one_attached :image
    
    validates_with RUTValidator
    
end
