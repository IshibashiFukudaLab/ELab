class CreateSmallCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :small_categories do |t|
      t.references :big_category
      t.column :name, :string

      t.timestamps
    end
  end
end
