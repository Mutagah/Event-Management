class TicketsController < ApplicationController
    def index
        render json: Ticket.all, status: :ok
    end

    def create
        if params.present?
            phone = PhonyRails.normalize_number(params[:phone_number],country_code: "KE").gsub(/\W/, "")
            ticket = Ticket.new(ticket_params)
            
            if ticket.save
                render json:{ success: "payment was created, check mobile device"},status: :created

            else
                
            render json: {error: "unsuccessful purchase,the payment failed"}

            end
        else
        render json: {error: "Invalid inputs"}
    end
end

    def update
        ticket = find_ticket
        ticket.update(ticket_updateparams)
        render json: ticket
    end

    def destroy
        ticket = find_ticket
        ticket.destroy
        head :no_content
    end

    private

    def find_ticket
        Ticket.find(params[:id])
    end

    def ticket_params
        params.permit(:ticket_no, :user_id, :event_id, :number_of_vip_tickets,:number_of_regular_tickets, :amount, :phone_number)
    end

    def ticket_updateparams
        params.permit(:is_vip, :number_of_vip_tickets, :is_regular, :number_of_regular_tickets)
    end
end
