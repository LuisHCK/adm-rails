class CreateProviders < ActiveRecord::Migration[5.0]
  def change
    create_table :providers do |t|
      t.string :name
      t.string :description
      t.string :address
      t.string :phone
      t.string :email
      t.string :phone
      t.datetime :last_purchase

      t.timestamps
    end
  end
end
