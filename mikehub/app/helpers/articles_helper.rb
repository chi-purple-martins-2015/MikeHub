module ArticlesHelper

  def short_body(string)
    string[0..160]
  end

  def find_subheading(article)

    heading_matcher = /((\r\n){2}<p>)([\w ]*\w[\w ])(<\/p>(\r\n){2})/
    link = '\3'
    link.gsub(/\s+/, "")
    link_open_tag = '<a name="\3" href="/articles/'+ article.id.to_s + link +'>'
    link_close_tag = '</a>'
    replacement_text = '\1' + link_open_tag +'\3' + link_close_tag + '\4'
    article.content.gsub(heading_matcher, replacement_text)
  end
end
