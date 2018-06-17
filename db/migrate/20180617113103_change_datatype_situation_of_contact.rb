class ChangeDatatypeSituationOfContact < ActiveRecord::Migration[5.1]
  def change
  	change_column :contacts, :situation, :integerß
  end
end
