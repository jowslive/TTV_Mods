class BotsController < ApplicationController
  before_action :set_bot, only: %i[edit show update]
  skip_before_action :authenticate_user!, only: %i[index]

  # Listagem de todos os Bots
  def index
    @bots = policy_scope(Bot).all.order(:created_at)
  end

  # Lista um Bot
  def show
  end

  # Lista um form de cadastro
  def new
    set_user
    @bot = policy_scope(Bot).new
    authorize @bot
  end

  # Cria um Bot
  def create
    @bot = policy_scope(Bot).new(bot_params)
    @user = current_user.id
    @bot.user_id = @user
    authorize @bot
    if @bot.save
      redirect_to bots_path
    else
      render :new
    end
  end

  # Lista um form de edicao
  def edit
  end

  # Acao de Update
  def update
    if @bot.update(bot_params)
      redirect_to bot_path(@bot)
    else
      render :new
    end
  end

  private

  def bot_params
    params.require(:bot).permit(:name, :photo)
  end

  def set_bot
    @bot = Bot.find(params[:id])
  end

  def set_user
    @user = current_user
  end
end
