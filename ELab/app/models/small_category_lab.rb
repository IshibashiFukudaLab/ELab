class SmallCategoryLab < ApplicationRecord
  belongs_to :small_category
  belongs_to :lab

  validates :small_category_id,
    uniqueness: {
      message: "同じ組み合わせのレコードが既に存在します。",
      scope: [:lab_id]
    }
end
