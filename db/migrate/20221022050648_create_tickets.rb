class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.string :ticket_no
      t.integer :user_id
      t.integer :event_id
      t.boolean :is_vip
      t.integer :number_of_vip_tickets
      t.boolean :is_regular
      t.integer :number_of_regular_tickets
      t.integer :amount
      t.string :phone_number

      t.timestamps
    end
  end
end
