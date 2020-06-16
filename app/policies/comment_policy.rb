class CommentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def destroy?
    user.role == "admin"
  end

  def update?
    record.progress.user != user
  end
end
