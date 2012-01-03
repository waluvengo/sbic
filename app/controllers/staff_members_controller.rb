class StaffMembersController < ApplicationController

  def show
    @staff_member = Staff_member.find(params[:id])
  end

  def signin
    @title = "Sign in"
  end

  def signup
    @title = "Sign up"
  end

end
