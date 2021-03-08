class UsersController < ApplicationController
  # after_action :verify_authorized, only: :index, unless: :devise_controller?
  before_action :verify_policy_scoped, only: [:index]

  def index
    @users = User.all.order(view_count: :DESC)
  end
end
