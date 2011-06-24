module ApplicationHelper
  def textile(content)
    RedCloth.new(content).to_html.html_safe if content
  end
  def property(property)
    if Property.where(:name => property).exists?
      Property.find_by_name(property).value
    else
      "Property '#{property}' is missing."
    end
  end
end
