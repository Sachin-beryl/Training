
module ApplicationHelper
  def error_message_for(object, attribute, options = {})
    if object.errors[attribute].any?
      error_class = options[:class] || 'error-message'
      content_tag(:div,"#{attribute.to_s.titleize} #{object.errors[attribute].first}", class: error_class)
    end
  end
end
