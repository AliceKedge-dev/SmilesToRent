class ClownPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Soyez explicite sur les enregistrements auxquels vous autorisez l'accès !
    def resolve
      scope.all
    end

    def show?
      true
    end

    def create?
      true
    end

    def update?
      record.user == user
    end

    def destroy?
      record.user == user
    end
  end
end
