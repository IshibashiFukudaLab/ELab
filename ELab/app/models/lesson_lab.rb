class LessonLab < ApplicationRecord
  belongs_to :lesson
  belongs_to :lab

  validates :lesson_id,
    uniqueness: {
      message: "同じ組み合わせのレコードが既に存在します。",
      scope: [:lab_id]
    }

end
