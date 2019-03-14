class PostDecorator < Draper::Decorator

  delegate_all

  class HTML < Redcarpet::Render::HTML
    include Rouge::Plugins::Redcarpet
  end

  def markdown
    render_options = {
        filter_html: true,
        hard_wrap: true,
        link_attributes: { rel: 'nofollow' }
    }
    renderer = HTML.new(render_options)

    extensions = {
        autolink: true,
        fenced_code_blocks: true,
        lax_spacing: true,
        no_intra_emphasis: true,
        strikethrough: true,
        superscript: true
    }

    markdown = Redcarpet::Markdown.new(renderer, extensions)
    markdown.render(object.body).html_safe
  end

  def published_at_decorated
    object.published_at.strftime("%d-%m-%Y")
  end

end
