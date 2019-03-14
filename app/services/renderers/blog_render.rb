require 'redcarpet'
require 'rouge'
require 'rouge/plugins/redcarpet'

module Renderers
  class BlogRender < Redcarpet::Render::HTML
    include Rouge::Plugins::Redcarpet
  end
end
