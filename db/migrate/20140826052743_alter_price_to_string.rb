class AlterPriceToString < ActiveRecord::Migration
  def up
	  change_column :products, :price, :string
  end

  def down
  end
end
