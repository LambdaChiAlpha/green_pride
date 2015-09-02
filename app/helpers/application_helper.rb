module ApplicationHelper

  def bootstrap_alias_for key
    case key.to_sym
    when :notice then :info
    else key
    end
  end
end
