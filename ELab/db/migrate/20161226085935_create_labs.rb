class CreateLabs < ActiveRecord::Migration[5.0]
  def change
    create_table :labs do |t|
      t.column :name, :string, null: false
      t.column :teacher, :string
      t.column :message, :string
      t.column :mail, :string
      t.column :theme, :string
      t.column :theme_detail, :text
      t.timestamps
    end
  end
end
