module MarkdownRenderable
  extend ActiveSupport::Concern

  class_methods do
    def render_markdown(text)
      return "" if text.blank?

      @markdown_renderer ||= Redcarpet::Markdown.new(
        Redcarpet::Render::HTML,
        autolink: true,
        tables: true,
        fenced_code_blocks: true,
        strikethrough: true,
        superscript: true,
        underline: true,
        highlight: true,
        quote: true,
        footnotes: true
      )

      @markdown_renderer.render(text).html_safe
    end
  end

  private

  def render_markdown(text)
    self.class.render_markdown(text)
  end
end
