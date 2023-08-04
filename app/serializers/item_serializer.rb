class ItemSerializer < ActiveModel::Serializer
  attributes :id, :uuid, :name, :brand, :prices

end
