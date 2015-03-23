class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
      t.date :date_of_journal
      t.string :payee
      t.text :description
      t.integer :account_id
      t.decimal :amount, precision: 10, scale: 2
      t.integer :user_id
      t.boolean :is_posted, default: false

      t.timestamps
    end
  end
end
