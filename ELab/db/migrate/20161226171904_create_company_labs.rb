class CreateCompanyLabs < ActiveRecord::Migration[5.0]
  def change
    create_table :company_labs do |t|
      t.references :company, foreign_key: true
      t.references :lab, foreign_key: true
      t.timestamps
    end
  end
end
