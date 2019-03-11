class PostDecorator < Draper::Decorator
  delegate_all
  @markdown = Redcarpet::Markdown.new(renderer, extensions = {})

  def marked_body
    @markdown.render(object.body)
  end
end