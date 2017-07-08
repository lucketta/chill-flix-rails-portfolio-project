class ShowPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.joins(:users).group(:name).order("count_email desc").limit(1).count("email")
    end
  end
end
