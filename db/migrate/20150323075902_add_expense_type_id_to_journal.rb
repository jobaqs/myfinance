class AddExpenseTypeIdToJournal < ActiveRecord::Migration
  def change
    add_column :journals, :expense_type_id, :integer
  end
end
