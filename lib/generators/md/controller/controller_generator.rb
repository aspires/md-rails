require 'rails/generators/erb/controller/controller_generator'

module Md
  module Generators
    class ControllerGenerator < Erb::Generators::ControllerGenerator
      source_root File.expand_path("../templates", __FILE__)

    protected

      def handler
        :md
      end

    end
  end
end
