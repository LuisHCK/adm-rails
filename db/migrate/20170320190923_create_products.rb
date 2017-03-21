class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.attachment :picture
      t.decimal :purchase_price
      t.decimal :sale_price
      t.integer :times_sold
      t.decimal :tax

      t.timestamps
    end
      add_reference :products, :category, index: true
      add_reference :products, :provider, index: true
  end
end
