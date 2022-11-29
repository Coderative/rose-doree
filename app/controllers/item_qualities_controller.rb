class ItemQualitiesController < ApplicationController
  def show
    Item.update_quality
    redirect_to items_url, notice: "Qualities updated."
  end
end
