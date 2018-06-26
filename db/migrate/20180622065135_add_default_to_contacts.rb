class AddDefaultToContacts < ActiveRecord::Migration[5.1]
  def change
  	 change_column_default :contacts, :situations, 0
  end
end
