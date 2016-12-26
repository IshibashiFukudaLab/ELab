class Lesson < ApplicationRecord
  has_many :lesson_labs, dependent: :destroy
  has_many :labs, :through => :lesson_labs

  accepts_nested_attributes_for :lesson_labs, allow_destroy: true
end
