class ConfigPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    return true
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
