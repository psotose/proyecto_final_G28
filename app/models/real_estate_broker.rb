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

    validates :rut, :name, presence: true
    validates_uniqueness_of :rut
    validates :name, length: { minimum: 2,
      alert: "El nombre de la corredora debe tener 2 caracteres como mínimo" }
    validates_with RUTValidator
    
    scope :order_by_opinion, -> {left_joins(:opinions).group("real_estate_brokers.id").order("AVG(case when opinions.rating is not null then opinions.rating else 0 end) DESC")}
    def average_opinion
      if self.opinions.blank?
        0
      else
        self.opinions.average(:rating).round(2)
      end 
    end   
end
