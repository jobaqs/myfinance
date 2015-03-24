class CreateExpenseTypes < ActiveRecord::Migration
  def change
    create_table :expense_types do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
