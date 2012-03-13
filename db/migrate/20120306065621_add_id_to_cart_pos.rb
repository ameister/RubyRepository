class AddIdToCartPos < ActiveRecord::Migration
  def change
    add_column :cart_pos, :cart_id, :integer

  end
end
