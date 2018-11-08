module ApplicationHelper

  def page_title
    title = "Artist site"
    title = @page_title + " - " + title if @page_title
    title
  end

  # 第3引数は省略可
  def menu_link_to(text, path, options={})
    content_tag :li do
      # 現在と同じページの場合はリンクにしない
      link_to_unless_current(text, path, options) do
        content_tag(:span, text)
      end
    end
  end

  
end
