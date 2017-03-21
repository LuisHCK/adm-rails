class CreateSales < ActiveRecord::Migration[5.0]
  def change
    create_table :sales do |t|
      t.decimal :quantity
      t.string :notes

      t.timestamps
    end
        add_reference :sales, :user, index: true
        add_reference :sales, :stock, index: true
  end
end
