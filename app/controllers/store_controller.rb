class StoreController < ApplicationController
  def index
    @store = Store.new
  end

  def create
    @store = Store.new(store_params)
    if @store.save
      redirect_to root_path
      flash[:notice] = '店舗追加が出来ました'
    else
       @store = Store.all
       flash.now[:alert] = "メッセージの保存に失敗しました。"
       render 'index'
    end
  end

private
  def store_params
    params.require(:store).permit(:restaurantName, :restaurantAdd, :restaurantPhone, :restaurantWebsite, :productName, :productPrice, :productRating, :comments)
  end
end
  
  
end