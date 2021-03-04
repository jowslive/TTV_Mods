class ConfigsController < ApplicationController
  before_action :set_config, only: %i[edit update]
  before_action :set_bot, only: %i[create destroy edit index new update]

  # Listagem de todas as configs
  def index
    @configs = policy_scope(Config).all.order(:created_at)
  end

  # Lista um form de cadastro
  def new
    set_user
    @config = policy_scope(Config).new
    authorize @config
  end

  # Cria uma config
  def create
    set_user
    @config = policy_scope(Config).new(config_params)
    @config.bot_id = @bot.id
    authorize @config
    if @config.save
      redirect_to bot_path(@bot)
    else
      render :new
    end
  end

  # Edita uma config
  def edit
    set_user
    authorize @config
  end

  # Acao de Update da config
  def update
    authorize @config
    if @config.update(config_params)
      redirect_to bot_path(params[:bot_id])
    else
      render :new
    end
  end

  # Deleta uma config
  def destroy
    set_user
    set_config
    authorize @config
    if @config.destroy
      redirect_to bot_path(@bot.id), notice: 'Bot excluído'
    else
      redirect_to bot_path(@bot.id), notice: 'Você não tem permissão'
    end
  end

  private

  # Parametros necessarios para salvar uma config
  def config_params
    params.require(:config).permit(:name, :content)
  end

  # Define um bot
  def set_bot
    @bot = Bot.find(params[:bot_id])
  end

  # Define uma config
  def set_config
    @config = Config.find(params[:id])
  end

  # Define o user da sessao
  def set_user
    @user = current_user
  end
end
