class Company < ApplicationRecord
  has_many :company_labs, dependent: :destroy
  has_many :labs, :through => :company_labs

  accepts_nested_attributes_for :company_labs, allow_destroy: true
 
end
