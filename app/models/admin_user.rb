class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable
  
  validates :email, :password, presence: true
  validates :password, length: { in: 6..20, alert: "El password debe tener 6 caracteres como mínimo" } 
         
end
