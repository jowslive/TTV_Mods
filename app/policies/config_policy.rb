class ConfigPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def new?
      return true if record.user.admin
    end

    def create?
      return true if record.user.admin
    end

    def edit?
      return true if record.user.admin
    end

    def update?
      return true if record.user.admin
    end

    def destroy?
      return true if record.user.admin
    end
  end
end
