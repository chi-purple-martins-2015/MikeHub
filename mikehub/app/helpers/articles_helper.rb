

module ArticlesHelper
  def make_html(string)
    string.html_safe
  end

  def clean_string_from_html(string)
    string = ActionView::Base.full_sanitizer.sanitize(string)
    string = string.gsub(/(&#13;)/, "")
    string = string.gsub(/(&quot;)/, "")
  end

  def recent_articles(string)
    string = clean_string_from_html(string)
    string[0..60]
  end

  def feature_articles(string)
    string = clean_string_from_html(string)
    string[0..150]
  end

  def find_subheading(article)
    heading_matcher = /((\r\n){2}<p>)([\w ]*\w[\w ])(<\/p>(\r\n){2})/
    link = '\3'
    p link
    link_open_tag = '<a name="\3" href="/articles/' + article.id.to_s + '/#\3">'
    link_close_tag = '</a>'
    replacement_text = '\1' + link_open_tag +'\3' + link_close_tag + '\4'
    article.content.gsub(heading_matcher, replacement_text)
  end
end
