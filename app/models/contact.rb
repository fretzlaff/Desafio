class Contact < ApplicationRecord
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :age, numericality: true
  validates :name, presence: true
  validates :name, uniqueness: true
  

end
