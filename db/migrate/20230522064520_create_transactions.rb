class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.float :amount, null: false
      t.references :payer, null: false
      t.references :payee, null: false

      t.timestamps
    end

    add_foreign_key :transactions, :users, column: :payer_id, primary_key: :id
    add_foreign_key :transactions, :users, column: :payee_id, primary_key: :id
  end
end
