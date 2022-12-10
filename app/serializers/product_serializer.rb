class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :description, :price
  belongs_to :category

end
