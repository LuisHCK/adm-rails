class CreateStocks < ActiveRecord::Migration[5.0]
  def change
    create_table :stocks do |t|
      t.decimal :quantity
      t.decimal :min_quantity
      t.string :comment
      t.string :lot

      t.timestamps
    end
      add_reference :stocks, :user, index: true
      add_reference :stocks, :product, index: true
  end
end
