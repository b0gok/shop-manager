module TagsHelper
  def tags_in_pillboxes(tags)
    sanitize tags.map { |tag| tag_in_pillbox(tag)}.join(' ')
  end
  
  def tag_in_pillbox(str)
    tag.span(str, class: 'badge rounded-pill bg-primary')
  end
end
