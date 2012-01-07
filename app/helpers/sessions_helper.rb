module SessionsHelper

  def sign_in(staff_member)
    cookies.permanent.signed[:remember_token] = [staff_member.id, staff_member.salt]
    self.current_staff_member = staff_member
  end

  def current_staff_member=(staff_member)
    @current_staff_member = staff_member
  end

  def current_staff_member
    @current_staff_member ||= staff_member_from_remember_token
  end

  def signed_in?
    !current_staff_member.nil?
  end

  def sign_out
    cookies.delete(:remember_token)
    self.current_staff_member = nil
  end

  def current_staff_member?(staff_member)
    staff_member == current_staff_member
  end

  def deny_access
    store_location
    redirect_to signin_path, :notice => "Please sign in to access this page."
  end

  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    clear_return_to
  end

  private

    def staff_member_from_remember_token
      StaffMember.authenticate_with_salt(*remember_token)
    end

    def remember_token
      cookies.signed[:remember_token] || [nil, nil]
    end

    def store_location
      session[:return_to] = request.fullpath
    end

    def clear_return_to
      session[:return_to] = nil
    end

end
