module ArticlesHelper

  def short_body(string)
    string[0..160]
  end

  def get_subheading_link(article)
    sub_heading_location = article[/((\r\n){2}<p>)([\w ]*\w[\w ])(<\/p>(\r\n){2})/]
    subheading = sub_heading_location[/([\w ]*\w[\w ])/]
    subheading.delete!(' ')
  end

  def find_subheading(article)
    get_subheading_link(article)
    heading_matcher = /((\r\n){2}<p>)([\w ]*\w[\w ])(<\/p>(\r\n){2})/
    link = '\3'
    link_open_tag = '<a name="\3" href="/articles/'+ article.id.to_s + '#\3">'
    link_close_tag = '</a>'
    replacement_text = '\1' + link_open_tag +'\3' + link_close_tag + '\4'
    article.content.gsub(heading_matcher, replacement_text)
  end
end
