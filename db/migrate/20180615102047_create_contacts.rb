class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.integer :user_id
      t.string :category
      t.text :message

      t.timestamps
    end
  end
end
