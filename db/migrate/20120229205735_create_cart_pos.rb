class CreateCartPos < ActiveRecord::Migration
  def change
    create_table :cart_pos do |t|
      t.integer :pos
      t.references :item
      t.integer :amount
      t.decimal :totalPrice

      t.timestamps
    end
  end
end
