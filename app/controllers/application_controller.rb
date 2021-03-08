class ApplicationController < ActionController::Base
  include Pundit
  before_action :authenticate_user!
  before_action :all_bots

  # Pundit: white-list approach.
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  # Uncomment when you *really understand* Pundit!
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(root_path)
  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  def verify_policy_scoped
    true
  end

  def all_bots
    @bots = policy_scope(Bot).all.order(name: :asc)
  end
end
