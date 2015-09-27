module ApplicationHelper

  # Returns the full title on a per-page basis
  def full_title(page_title)
    base_title = "Angelstrap"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  # Used to style flash messages based on their type
  def flash_class(level)
    p level
    case level
      when "notice" then "alert alert-info"
      when "alert" then "alert alert-info"
      when "success" then "alert alert-success"
      when "error" then "alert alert-danger"
      when "danger" then "alert alert-danger"
    end
  end

  def sex_icon(sex)
    case sex
      when "Male" then "fa fa-male"
      when "Female" then "fa fa-female"
    end
  end

  def is_active?(controller, section)
    if current_page?(controller: controller, section: section)
      "active"
    else
      ""
    end
  end

end