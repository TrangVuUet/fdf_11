class Ability
  include CanCan::Ability

  def initialize user
    user ||= User.new
    if user.admin?
      can :manage, :all
    elsif user.user?
      can :read, :all
      can :update, User
    elsif user.guest?
      can :read
    end
  end
end
