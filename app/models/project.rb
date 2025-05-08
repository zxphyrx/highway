class Project
  attr_reader :repo, :project_name, :title, :author, :description, :created_at, :content

  def initialize(attributes = {})
    @repo = attributes[:repo]
    @project_name = attributes[:project_name]
    @title = attributes[:title]
    @author = attributes[:author]
    @description = attributes[:description]
    @created_at = attributes[:created_at]
    @content = attributes[:content]
  end

  def name
    title
  end

  def github_slug
    "#{repo}/#{project_name}"
  end

  def github_repo
    "https://github.com/#{github_slug}"
  end

  def created_at_date
    Date.parse(created_at)
  end

  def formatted_created_at
    created_at_date.strftime("%B %d, %Y")
  end

  def self.all
    Dir.glob(Rails.root.join("content/projects/*/*/journal.md")).map do |file|
      content = File.read(file)
      metadata, _ = parse_frontmatter(content)

      # Extract repo and project name from path
      path_parts = file.split("/")
      repo = path_parts[-3]
      project_name = path_parts[-2]

      new(
        repo: repo,
        project_name: project_name,
        title: metadata["title"],
        author: metadata["author"],
        description: metadata["description"],
        created_at: metadata["created_at"]
      )
    end.sort_by(&:created_at_date).reverse
  end

  def self.find(repo, project_name)
    file_path = Rails.root.join("content/projects", repo, project_name, "journal.md")
    return nil unless File.exist?(file_path)

    content = File.read(file_path)
    metadata, markdown_content = parse_frontmatter(content)

    new(
      repo: repo,
      project_name: project_name,
      title: metadata["title"],
      author: metadata["author"],
      description: metadata["description"],
      created_at: metadata["created_at"],
      content: render_markdown(markdown_content)
    )
  end

  private

  def self.parse_frontmatter(content)
    if content =~ /\A(---\s*\n.*?\n?)^(---\s*$\n?)(.*)/m
      metadata = YAML.safe_load($1)
      content = $3
      [ metadata, content ]
    else
      [ {}, content ]
    end
  end

  def self.render_markdown(content)
    markdown = Redcarpet::Markdown.new(
      Redcarpet::Render::HTML,
      autolink: true,
      tables: true,
      fenced_code_blocks: true
    )
    markdown.render(content)
  end
end
