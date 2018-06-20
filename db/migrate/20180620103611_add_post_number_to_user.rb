class AddPostNumberToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :post_number, :string
  end
end
