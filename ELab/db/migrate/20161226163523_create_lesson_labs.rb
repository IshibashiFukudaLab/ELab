class CreateLessonLabs < ActiveRecord::Migration[5.0]
  def change
    create_table :lesson_labs do |t|
      t.references :lesson, foreign_key: true
      t.references :lab, foreign_key: true

      t.timestamps
    end
  end
end
