class UpdateAmountForExpenses < ActiveRecord::Migration[5.0]
  def change
	  def up
	    change_column :expenses, :amount, :decimal, :precision => 8, :scale => 2
	  end
	 
	  def down
	    change_column :expenses, :amount, :decimal
	  end
  end
end
