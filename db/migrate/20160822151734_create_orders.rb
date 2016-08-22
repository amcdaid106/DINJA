class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :price
      t.references :user, foreign_key: true
      t.string :status
      t.date :delivery_date

      t.timestamps
    end
  end
end
