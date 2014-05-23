class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.role? :producer
      can :manage, :all
    elsif 
      can :read, Program
    end
  end




end

