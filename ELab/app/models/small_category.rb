class SmallCategory < ApplicationRecord
  has_many :small_category_labs, dependent: :destroy
  has_many :labs, :through => :small_category_labs

  accepts_nested_attributes_for :small_category_labs, allow_destroy: true
 
end
