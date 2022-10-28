class TicketSerializer < ActiveModel::Serializer
  attributes :id, :ticket_no, :user_id, :event_id, :is_vip, :number_of_vip_tickets, :is_regular, :number_of_regular_tickets, :amount
end
