class AddAdminCommentToContact < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :admin_comment, :text
  end
end
