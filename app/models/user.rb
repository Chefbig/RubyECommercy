class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :addresses
  has_many :orders

  validates :email, presence: true

  def name
    return email
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end
