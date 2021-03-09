class ResultsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @bots = Bot.all.order(name: :asc)
    @configs = []
    if params[:query].present?
      @bots.each do |bot|
        @configs << bot.configs.where("name ILIKE :query OR content ILIKE :query OR description ILIKE :query",
                                      query: "%#{params[:query]}%").order(name: :asc)
      end
    else
      @bots.each do |bot|
        @configs << bot.configs.order(name: :asc)
      end
    end
    @results = @configs.flatten
  end
end
