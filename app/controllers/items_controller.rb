class ItemsController < ApplicationController
  def index
    @items = Item.where(user_id: current_user)
    @item = Item.new
  end


end
