module ApplicationHelper
  def show_sidebar?
    !current_page?(root_path)
  end

  def markdown_to_html(markdown)
    Kramdown::Document.new(markdown).to_html
  end

  def link_to(name = nil, options = nil, html_options = nil, &block)
    # warning might be jank. it's overriding the default link_to method lol.
    if block
      options ||= {}
      new_options = options
    else
      html_options ||= {}
      new_options = html_options
    end
    new_options[:class] ||= []
    if new_options[:class].is_a? Array
      new_options[:class] << "btn"
    else
      new_options[:class] << " btn"
    end
    super(name, options, html_options, &block)
  end
end
