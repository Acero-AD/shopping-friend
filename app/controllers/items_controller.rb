class ItemsController < ApplicationController
  def create
    item = Item.new(item_params)
    price = Price.new
    price.amount = price_params[:amount]
    store = Store.find(price_params[:store_id])
    price.store = store
    item.prices << price
    if item.save!
      render json: item, status: :created
    else
      render json: item.errors, status: :unprocessable_entity
    end
  end

  private

    memoize def item_params
      params.require(:item).permit(:name, :brand)
    end

    memoize def price_params
      params.require(:price).permit(:amount, :store_id)
    end
end
