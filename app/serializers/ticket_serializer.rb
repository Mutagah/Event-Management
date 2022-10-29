class TicketSerializer < ActiveModel::Serializer
  attributes :id, :ticket_no, :user_id, :event_id,:number_of_vip_tickets, :number_of_regular_tickets, :amount
end
