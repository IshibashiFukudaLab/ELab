class PeopleLab < ApplicationRecord
  belongs_to :person
  belongs_to :lab

  validates :people_id,
    uniqueness: {
      message: "同じ組み合わせのレコードが既に存在します。",
      scope: [:labs_id]
    }
end
