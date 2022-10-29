class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.string :MerchantRequestID
      t.string :CheckoutRequestID
      t.string :ResponseDescription
      t.integer :ResponseCode
      t.string :CustomerMessage

      t.timestamps
    end
  end
end
