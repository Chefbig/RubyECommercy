class About < ApplicationRecord
  validates :name, :description,:phone,:address1,:postalcode, presence: true
  validates :name, :description, length: {in: 2..300}
  validates :phone, format: {with: /\d{3}-\d{3}-\d{4}/, message: "bad format. 204-555-1234"}
  validates :address1, length: {in: 2..100}
  validates :postalcode, format: {with: /\d{1}[A-Z]{1}[ -]?\d{1}[A-Z]{1}\d{1}/, message: "A1A 1A1 format for postalcode"}
  #:name, :description,:phone,:address1,:address2,:postalcode
end
