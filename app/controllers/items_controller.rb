class ItemsController < ApplicationController
  def index
    @items = Item.where(user_id: current_user)
    @item = Item.new
  end


  def create
    @item = Item.new(item_params)
    @item.user = current_user
    @item.save
    redirect_to items_path
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end

end
