class FavouritesController < ApplicationController
  before_action :check_if_logged_in

  def create
    # @product = Product.find params[:product_id]
    favourite = Favourite.create( poem_id: params[:poem_id], user_id:@current_user.id)
    redirect_to poem_path(params[:poem_id])
  end

  def destroy
    favourite = Favourite.find_by(user_id: @current_user.id, poem_id: params[:poem_id])
    favourite.destroy
    redirect_to poem_path(params[:poem_id])
  end
end
