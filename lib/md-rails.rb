require 'redcarpet/compat'
require 'rails'

module Md
  module MarkdownHandler
    def self.erb
      @erb ||= ActionView::Template.registered_template_handler(:erb)
    end

    def self.call(template)
      compiled_source = erb.call(template)
      "Markdown.new(begin;#{compiled_source};end).to_html"
    end
  end

  module Rails
    class Railtie < ::Rails::Railtie
      if ::Rails.version.to_f >= 3.1
        config.app_generators.template_engine :md
      else
        config.generators.template_engine :md
      end
    ActionView::Template.register_template_handler :md, Md::MarkdownHandler
   end
  end
end
