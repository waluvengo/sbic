class StaffMembersController < ApplicationController

  def show
    @staff_member = StaffMember.find(params[:id])
    @title = @staff_member.surname
  end

  def new
    @staff_member = StaffMember.new
    @title = "Sign up"
  end

  def signin
    @title = "Sign in"
  end

  def create
    @staff_member = StaffMember.new(params[:staff_member])
    if @staff_member.save
      sign_in @staff_member
      flash[:success] = "Welcome to Surrey Biodiversity Information Centre!"
      redirect_to @staff_member
    else
      @title = "Sign up"
      render 'new'
    end
  end
end
