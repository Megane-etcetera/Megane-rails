class RenameStatusColumnToContacts < ActiveRecord::Migration[5.1]
  def change 
  	rename_column :contacts, :status, :situations
  end
end
