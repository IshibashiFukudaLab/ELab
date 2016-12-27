class CreateChats < ActiveRecord::Migration[5.0]
  def change
    create_table :chats do |t|
      t.references :lab
      t.column :user_id, :integer
      t.column :username, :string
      t.column :message, :text
      t.timestamps
    end
  end
end
