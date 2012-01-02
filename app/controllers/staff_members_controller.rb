class StaffMembersController < ApplicationController

  def show
    @staff_member = Staff_member.find(params[:id])
  end

  def new
    @title = "Sign up"
  end

end
