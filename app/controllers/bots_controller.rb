class BotsController < ApplicationController
  before_action :set_bot, only: %i[edit show update]
  skip_before_action :authenticate_user!, only: %i[index]

  # Listagem de todos os Bots
  def index
    @bots = policy_scope(Bot).all.order(:created_at)
  end

  # Lista um Bot
  def show
    authorize @bot
    @configs = Config.where(bot_id: @bot.id)
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
    set_user
    authorize @bot
  end

  # Acao de Update do bot
  def update
    authorize @bot
    if @bot.update(bot_params)
      redirect_to bots_path
    else
      render :new
    end
  end

  # Deleta um bot
  def destroy
    set_user
    set_bot
    authorize @bot
    if @bot.destroy
      redirect_to bots_path, notice: 'Bot excluído'
    else
      redirect_to bots_path, notice: 'Você não tem permissão'
    end
  end

  private

  # Parametros necessarios para salvar um bot
  def bot_params
    params.require(:bot).permit(:name, :photo)
  end

  # Define um bot
  def set_bot
    @bot = Bot.find(params[:id])
  end

  # Define o user da sessao
  def set_user
    @user = current_user
  end
end
