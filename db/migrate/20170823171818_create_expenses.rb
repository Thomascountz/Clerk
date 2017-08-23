class CreateExpenses < ActiveRecord::Migration[5.0]
  def change
    create_table :expenses do |t|
    	t.string :title, 				null: false
    	t.text :description
    	t.decimal :amount, 			null: false
    	t.integer :creator_id,  index: true
      t.timestamps
    end
  end
end
