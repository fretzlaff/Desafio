class Contact < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :age, numericality: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :email, uniqueness: true

  UNRANSACKABLE_ATTRIBUTES = ["id", "name", "email", "created_at", "updated_at"]

  def self.ransackable_attributes auth_object = nil
    (column_names - UNRANSACKABLE_ATTRIBUTES) + _ransackers.keys
  end
  
  
end
