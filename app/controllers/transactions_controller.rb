class TransactionsController < ApplicationController
    def index
        render json: Transaction.all,status: :ok
    end
    def create
        if params[:Body][:stkCallback][:Item].present? 
            render json:{message: "Successfully payment"}
        else
        transaction = Transaction.create!(transaction_params)
        render json: transaction,status: :created
        end
    end
    private

    def transaction_params
        params.permit(:MerchantRequestID,:CheckoutRequestID,:ResponseDescription, :ResponseCode, :CustomerMessage, :age)
    end
end
