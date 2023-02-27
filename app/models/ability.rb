class Ability
  include CanCan::Ability

  def initialize(user)
    return unless current_user.present?

    can :manage, :all, user:
  end
end
