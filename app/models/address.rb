class Address < ApplicationRecord
  belongs_to :addressable, polymorphic: true

  validates :city, :state, :zip, presence: true
  validates :state, length: { is: 2 }
  validates :zip, numericality: true, length: { is: 5 }
end
