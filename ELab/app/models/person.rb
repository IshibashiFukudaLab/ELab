class Person < ApplicationRecord
  belongs_to :lab

  validates :name, uniqueness: true
end
