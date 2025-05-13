class InfoController < MarkdownController
  def show
    markdown_file_path = Rails.root.join("app", "views", "info", "index.md")
    if File.exist?(markdown_file_path)
      markdown_content = File.read(markdown_file_path)
      @content = render_markdown(markdown_content)
    else
      @content = "<p>Markdown file not found.</p>"
    end
  end
end
