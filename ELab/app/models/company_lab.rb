class CompanyLab < ApplicationRecord
  belongs_to :company
  belongs_to :lab

  validates :company_id,
    uniqueness: {
      message: "同じ組み合わせのレコードが既に存在します。",
      scope: [:lab_id]
    }
end
