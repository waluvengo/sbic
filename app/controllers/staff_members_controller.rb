class StaffMembersController < ApplicationController
  before_filter :authenticate, :only => [:index, :edit, :update, :destroy]
  before_filter :correct_staff_member, :only => [:edit, :update]
  before_filter :admin_staff_member,   :only => :destroy
  
  def index
    @title = "All Staff Members"
    @staff_members = StaffMember.paginate(:page => params[:page])
  end  

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

  def edit
    @staff_member = StaffMember.find(params[:id])
    @title = "Edit user"
  end

  def update
    @staff_member = StaffMember.find(params[:id])
    if @staff_member.update_attributes(params[:staff_member])
      flash[:success] = "Profile updated."
      redirect_to staff_members_path
    else
      @title = "Edit user"
      render 'edit'
    end
  end

  def destroy
    StaffMember.find(params[:id]).destroy
    flash[:success] = "Staff Member Record Deleted."
    redirect_to staff_members_path
  end


  private

    def authenticate
      deny_access unless signed_in?
    end

    def correct_staff_member
      @staff_member = StaffMember.find(params[:id])
      redirect_to(root_path) unless current_staff_member?(@staff_member)
    end

    def admin_staff_member
      redirect_to(root_path) unless current_staff_member.admin?
    end
end
