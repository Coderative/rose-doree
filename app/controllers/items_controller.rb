class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def reset
    Item.reset
    redirect_to items_url, notice: "Items reset."
  end

  def update_quality
    Item.update_quality
    redirect_to items_url, notice: "Item qualities updated."
  end
end
