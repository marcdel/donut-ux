module ApplicationHelper
  def bootstrap_class_for flash_type
    case flash_type
      when "notice"
        "alert-info"
      else
        "alert-#{flash_type}"
    end
  end
end
