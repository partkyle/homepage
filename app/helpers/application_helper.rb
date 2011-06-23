module ApplicationHelper
  def textile(content)
    RedCloth.new(content).to_html.html_safe if content
  end
end
