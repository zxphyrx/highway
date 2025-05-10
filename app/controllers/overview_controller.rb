class OverviewController < ApplicationController
  def show
    # Get the requested page from the URL
    page = params[:page]

    # Sanitize the page parameter to prevent directory traversal
    sanitized_page = sanitize_page(page)

    # Build the file path for the Markdown file
    file_path = Rails.root.join("app", "views", "overview", "#{sanitized_page}.md")

    # Check if the file exists
    if File.exist?(file_path)
      # Read and render the Markdown file
      markdown = File.read(file_path)
      renderer = Redcarpet::Markdown.new(Redcarpet::Render::HTML, extensions = {})
      @content = renderer.render(markdown)
      render layout: "overview"
    else
      # Render a 404 page if the file doesn't exist
      render plain: "Page not found", status: :not_found
    end
  end

  private

  # Sanitize the page parameter to prevent directory traversal
  def sanitize_page(page)
    # Allow only alphanumeric characters, dashes, and underscores
    page.gsub(/[^a-zA-Z0-9_-]/, "")
  end
end
