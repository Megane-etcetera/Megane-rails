class ChangeDatatypeSituationOfContacts < ActiveRecord::Migration[5.1]
  def change
  	change_column :contacts, :situation, :integer  
  end
end
