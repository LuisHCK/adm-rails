module ApplicationHelper
    def human_date(date)
        date.strftime("%B %d, %Y, %A")
    end
    #Icon helper
    def icon(icon, text = nil, html_options = {})
    text, html_options = nil, text if text.is_a?(Hash)

    content_class = "fa fa-#{icon}"
    content_class << " #{html_options[:class]}" if html_options.key?(:class)
    html_options[:class] = content_class

    html = content_tag(:i, nil, html_options)
    html << ' ' << text.to_s unless text.blank?
    html
    end

    def get_user_name(user)
    return name = "#{user.name} #{user.last_name}"
    end
end
