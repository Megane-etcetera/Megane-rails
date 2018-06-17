class RemoveStatusFromContact < ActiveRecord::Migration[5.1]
  def change
    remove_column :contacts, :status, :string
  end
end
