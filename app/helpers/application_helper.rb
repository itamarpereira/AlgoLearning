module ApplicationHelper
  def user_image_url(user)
    user.photo.attached? ? cl_image_path(user.photo.key) : 'https://images.unsplash.com/photo-1557318041-1ce374d55ebf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'
  end

  def course_image_url(course)
    course.photo.attached? ? "#{cl_image_path(course.photo.key)}" : "https://images.unsplash.com/photo-1557318041-1ce374d55ebf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80"
  end
end
