class CreateSmallCategoryLabs < ActiveRecord::Migration[5.0]
  def change
    create_table :small_category_labs do |t|
      t.references :small_category, foreign_key: true
      t.references :lab, foreign_key: true
      t.timestamps
    end
  end
end
