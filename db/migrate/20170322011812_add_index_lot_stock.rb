class AddIndexLotStock < ActiveRecord::Migration[5.0]
  def change
    add_index :stocks, :lot, unique: true
  end
end
