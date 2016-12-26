class Lab < ApplicationRecord
  has_many :people
  has_many :lesson_labs, dependent: :destroy
  has_many :lessons, :through => :lesson_labs

  accepts_nested_attributes_for :lesson_labs, allow_destroy: true

  def self.search(search)
    if search
      Lab.where(['name LIKE ?', "%#{search}%"])
    else
      Lab.all #全て表示。
    end
  end

end
