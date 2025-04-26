module ApplicationHelper

  def show_sidebar? 
    !current_page?(root_path)
  end

end
