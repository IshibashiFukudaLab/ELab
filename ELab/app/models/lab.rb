class Lab < ApplicationRecord
  has_many :people

  def self.search(search)
    if search
      Lab.where(['name LIKE ?', "%#{search}%"])
    else
      Lab.all #全て表示。
    end
  end

end
