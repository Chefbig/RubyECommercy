class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :addresses

  validates :email, presence: true

  def name
    return email
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end
