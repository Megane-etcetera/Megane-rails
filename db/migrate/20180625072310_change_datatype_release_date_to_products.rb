class ChangeDatatypeReleaseDateToProducts < ActiveRecord::Migration[5.1]
  def change
    change_column :products, :release_date, :date
  end
end
