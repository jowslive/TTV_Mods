class ConfigsController < ApplicationController
  before_action :set_config, only: %i[edit update]
  before_action :set_bot, only: %i[index new create destroy]

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

  def edit
    set_user
    authorize @config
  end

  private

  def set_user
    @user = current_user
  end

  def config_params
    params.require(:config).permit(:name, :content)
  end

  def set_bot
    @bot = Bot.find(params[:bot_id])
  end

  def set_config
    @config = Config.find(params[:id])
  end
end
