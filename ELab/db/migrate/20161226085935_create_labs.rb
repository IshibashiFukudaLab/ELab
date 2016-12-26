class CreateLabs < ActiveRecord::Migration[5.0]
  def change
    create_table :labs do |t|
      t.column :name, :string, null: false
      t.timestamps
    end
  end
end
