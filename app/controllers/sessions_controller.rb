class SessionsController < ApplicationController

  def new
    @title = "Sign in"
  end

  def create
    staff_member = StaffMember.authenticate(params[:session][:email],
                             params[:session][:password])
    if staff_member.nil?
      flash.now[:error] = "Invalid email/password combination."
      @title = "Sign in"
      render 'new'
    else
      sign_in staff_member
      redirect_back_or staff_member
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end

