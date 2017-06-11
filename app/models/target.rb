class Target < ApplicationRecord
  has_many :criterium
  validates :name, presence: true,
                    length: { minimum: 5 }
end
