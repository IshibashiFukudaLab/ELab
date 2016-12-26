class AddMailToLabs < ActiveRecord::Migration[5.0]
  def change
    add_column :labs, :mail, :string
  end
end
