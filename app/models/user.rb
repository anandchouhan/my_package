class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :validatable, :rememberable
         #:recoverable, :rememberable, :trackable, 
	has_many :user_needs, :dependent => :destroy
	has_many :user_services, :dependent => :destroy
  validates :first_name, :last_name, :country, :state, :city, :country_code, :phone_no, :presence   => true
  validates_length_of :phone_no, :minimum => 10, :maximum => 10
  validates_format_of :first_name, :last_name, with: /\A[a-zA-Z\s]+\z/


  def  update_user

  end
end

