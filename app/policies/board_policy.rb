class BoardPolicy < ApplicationPolicy
    # NOTE: Be explicit about which records you allow access to!
    def permitted_attributes 
    [:name] if user.admin? || user.owner_of?(record)
    end

  def edit?
    record.user == user
  end
end
