class ResultsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR content ILIKE :query OR description ILIKE :query"
      @results = Config.where(sql_query, query: "%#{params[:query]}%")
    else
      @results = Config.all
    end
  end
end
