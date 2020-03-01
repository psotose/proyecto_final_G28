class RUTValidator < ActiveModel::Validator
  require 'chilean_rut'
  def validate(record)
    unless RUT::validate(record.rut)
      record.errors[:rut] << 'El rut es invalido'
    end
  end
end

class ApplicationRecord < ActiveRecord::Base
  include ActiveModel::Validations
  self.abstract_class = true

  validates_with RUTValidator
end
