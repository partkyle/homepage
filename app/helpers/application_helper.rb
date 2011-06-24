module ApplicationHelper
  def textile(content)
    RedCloth.new(content).to_html.html_safe if content
  end
  def property(name)
    if Property.where(:name => name).exists?
      property = Property.find_by_name(name)
      if property.textile
        textile(property.value)
      else
        property.value
      end
    else
      "Property '#{name}' is missing."
    end
  end
end
