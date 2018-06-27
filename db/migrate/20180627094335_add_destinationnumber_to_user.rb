class AddDestinationnumberToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :destinationnumber, :integer
  end
end
