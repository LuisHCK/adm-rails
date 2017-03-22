class CreateOrganizations < ActiveRecord::Migration[5.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.attachment :logo
      t.string :email
      t.string :address
      t.string :phone
      t.string :email
      t.string :country
      t.string :city

      t.timestamps
    end
  end
end
