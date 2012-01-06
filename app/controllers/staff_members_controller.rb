class StaffMembersController < ApplicationController

  def show
    @staff_member = StaffMember.find(params[:id])
    @title = @staff_member.surname
  end

  def signin
    @title = "Sign in"
  end

  def signup
    @title = "Sign up"
  end

end
