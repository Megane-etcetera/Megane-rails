class RemoveSituationFromContact < ActiveRecord::Migration[5.1]
  def change
    remove_column :contacts, :situation, :integer
  end
end
