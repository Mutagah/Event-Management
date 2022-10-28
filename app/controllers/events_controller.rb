class EventsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :unfound_response

    def index 
    render json: Event.all,status: :ok
    end
    
    def show
        event = find_event
        render json: event, status: :ok
    end

    def create
        event = Event.create!(event_params)   
        render json: event,status: :created
    end

    def update
        event = find_event
        event.update!(event_params)
        render json: event,status: :accepted
    end

    def destroy
        event = find_event
        event.destroy
        head :no_content
    end

    private
    def find_event
        Event.find(params[:id])
    end

    def event_params
        params.permit(:category_id,:title,:event_date,:event_time, :ticket_format,:early_booking_end_date,:early_booking_price_regular,:early_booking_price_vip,:location,:regular_price,:vip_price,:vip_no_of_tickets,:regular_no_of_tickets,:banner_img,:description,:image_url1,:image_url2)
    end

    def unfound_response
        render json: {error: "event not found"}, status: :not_found
    end

end
