class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :MerchantRequestID, :CheckoutRequestID, :ResponseDescription, :ResponseCode, :CustomerMessage
end
