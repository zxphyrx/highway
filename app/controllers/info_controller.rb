class InfoController < ApplicationController
  def show
    markdown_file_path = Rails.root.join("app", "views", "info", "info.md")
    if File.exist?(markdown_file_path)
      markdown_content = File.read(markdown_file_path)
      @content = helpers.markdown_to_html(markdown_content)
    else
      @content = "<p>Markdown file not found.</p>"
    end
  end
end
