class FavoritesController < ApplicationController
  def create
    @favorite = Favorite.new(favorite_params)
    @favorite.config_id = params[:config_id]
    @favorite.user = current_user
    authorize @favorite
    if @favorite.save
      respond_to do |format|
        format.js
      end
    else
      flash[:alert] = "Ocorreu um erro ao favoritar!"
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    authorize @favorite
    if @favorite.destroy
      respond_to do |format|
        format.js
        format.html { redirect_back fallback_location: root_path }
      end
    else
      flash[:alert] = "Ocorreu um erro ao desfavoritar!"
    end
  end

  private

  def favorite_params
    params.permit(:config_id)
  end
end
