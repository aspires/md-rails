require 'generators/md/controller/controller_generator'

module Md
  module Generators
    class MailerGenerator < ControllerGenerator
      source_root File.expand_path("../templates", __FILE__)

    protected

      def format
        :text
      end

    end
  end
end
