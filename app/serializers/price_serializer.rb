class PriceSerializer < ActiveModel::Serializer
  attributes :id, :uuid, :amount, :store_id
end
