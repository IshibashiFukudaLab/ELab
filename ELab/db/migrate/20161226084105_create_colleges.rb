class CreateColleges < ActiveRecord::Migration[5.0]
  def change
    create_table :colleges do |t|
      t.column :name, :string, null: false
      t.column :address, :string	

      t.timestamps
    end
  end
end
