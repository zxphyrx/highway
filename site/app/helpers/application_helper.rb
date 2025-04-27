module ApplicationHelper

  def show_sidebar? 
    !current_page?(root_path)
  end

  def markdown_to_html(markdown)
    Kramdown::Document.new(markdown).to_html
  end

end
