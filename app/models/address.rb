class Address < ApplicationRecord
  belongs_to :user
  belongs_to :province
  validates :firstname,:lastname ,:phone,:addressline1,:city,:postalcode,:user_id_id, presence: true

  validates :firstname,:lastname ,:addressline1,:city, length: {in: 2..30}
  validates :phone, format: {with: /\d{3}-\d{3}-\d{4}/, message: "bad format. 204-555-1234"}
  validates :postalcode, format: {with: /\d{1}[A-Z]{1}[ -]?\d{1}[A-Z]{1}\d{1}/, message: "A1A 1A1 format for postalcode"}

end
