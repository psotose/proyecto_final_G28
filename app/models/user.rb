class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :opinions 
  has_many :real_estate_brokers
  has_one_attached :picture     
  
  #validates :rut, presence: { message: 'Ingrese un rut'}, uniqueness: true
  validates_uniqueness_of :email
end
