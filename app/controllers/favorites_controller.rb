class FavoritesController < ApplicationController
  def create
    @favorite = Favorite.new(favorite_params)
    @favorite.config_id = params[:format]
    @favorite.user = current_user
    authorize @favorite
    if @favorite.save
      flash[:notice] = "Favoritado com sucesso!"
    else
      flash[:alert] = "Ocorreu um erro ao favoritar!"
    end
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @favorite = Favorite.find_by(config_id: params[:id], user_id: current_user)
    authorize @favorite
    if @favorite.destroy
      flash[:notice] = "Desfavoritado com sucesso!"
    else
      flash[:alert] = "Ocorreu um erro ao desfavoritar!"
    end
    redirect_back(fallback_location: root_path)
  end

  private

  def favorite_params
    params.permit(:config_id)
  end
end
