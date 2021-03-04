class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @bots = policy_scope(Bot).all.order(:created_at)
  end
end
