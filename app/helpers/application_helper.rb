module ApplicationHelper
  def markdown(text)
    options = [:autolink, :no_intraemphasis. :tables]
    Redcarpet.new(text, *options).to_html.html_safe if text
  end
  def property(name)
    if Property.where(:name => name).exists?
      property = Property.find_by_name(name)
      if property.markdown
        markdown(property.value)
      else
        property.value
      end
    else
      "Property '#{name}' is missing."
    end
  end
end
