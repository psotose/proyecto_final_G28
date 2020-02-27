class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates_uniqueness_of :email
  has_many :opinions
  has_many :real_estate_brokers, through: :opinions  
  has_many :real_estate_brokers
  has_one_attached :picture     
end
