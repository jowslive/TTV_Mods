class BotPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    return true if user.admin
  end

  def new?
    return true if user.admin
  end

  def create?
    return true if user.admin
  end

  def edit?
    return true if user.admin
  end

  def update?
    return true if user.admin
  end

  def destroy?
    return true if user.admin
  end
end
