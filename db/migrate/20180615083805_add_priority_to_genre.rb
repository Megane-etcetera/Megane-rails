class AddPriorityToGenre < ActiveRecord::Migration[5.1]
  def change
    add_column :genres, :priority, :integer
    add_index :genres, :priority, unique: true 
  end
end
