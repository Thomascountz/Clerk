class ChangeCreatorIdToNotNullInExpenses < ActiveRecord::Migration[5.0]
  def change
  	change_column_null :expenses, :creator_id, false
  end
end
