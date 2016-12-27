class CreatePeopleLabs < ActiveRecord::Migration[5.0]
  def change
    create_table :people_labs do |t|
      t.references :people, foreign_key: true
      t.references :labs, foreign_key: true
      t.timestamps
    end
  end
end
