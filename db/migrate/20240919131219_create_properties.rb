class CreateProperties < ActiveRecord::Migration[7.2]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :healine
      t.text :description
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
