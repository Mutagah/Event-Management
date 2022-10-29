class TransactionsController < ApplicationController
    def index
        render json: Transaction.all,status: :ok
    end
    def create
        transaction = Transaction.create!(transaction_params)
        render json: transaction,status: :created
    end
    private

    def transaction_params
        params.permit(:MerchantRequestID,:CheckoutRequestID,:ResponseDescription, :ResponseCode, :CustomerMessage)
    end
end
