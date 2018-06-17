class AddSituationToContact < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :situation, :integer
  end
end
