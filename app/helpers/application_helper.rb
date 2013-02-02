module ApplicationHelper

  def admins_only(&block)
    block.call if current_user.try(:admin?)
    nil
  end
  # Returns the full title on a per-page basis.
    def full_title(page_title)
      base_title = "Oppcis"
      if page_title.empty?
        base_title
      else
        "#{base_title} | #{page_title}"
      end
    end

   #Flash Message

    def flash_class(level)
    	case level
    	when :notice then "success"
    	when :error then "error"
    	when :alert then "error"
    end
  end
end
