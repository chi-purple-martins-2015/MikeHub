

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
end
