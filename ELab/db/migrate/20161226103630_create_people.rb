class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.references :lab
      t.column :name, :string, null: false
      t.column :grade, :string
      t.timestamps
    end
  end
end
