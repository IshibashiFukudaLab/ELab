class CreateLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :lessons do |t|
      t.references :college
      t.column :name, :string, null: false, unique: true
      t.column :kana, :string
      t.timestamps
    end
  end
end
