class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.float :amount
      t.references :payer, null: false, foreign_key: true
      t.references :payee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
