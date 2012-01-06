module StaffMembersHelper

  def gravatar_for(staff_member, options = { :size => 50 })
    gravatar_image_tag(staff_member.email.downcase, :alt => h(staff_member.surname),
                                            :class => 'gravatar',
                                            :gravatar => options)
  end

end
