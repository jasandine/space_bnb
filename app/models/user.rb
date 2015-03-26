class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :listings
  has_many :listings, :through => :reservations
  has_many :reservations
  validates :email, :presence => true
  validates :password, :presence => true
  validates :password_confirmation, :presence => true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable #:confirmable
end
