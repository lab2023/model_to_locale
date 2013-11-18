require 'rails/generators'
require 'rails/generators/base'
require 'model_to_locale/to_locale'

module ModelToLocale
  module Generators
    class AddModelGenerator < ::Rails::Generators::Base
      argument :locale, :type => :string, default: "tr"

      class_option :model, :type => :string, :desc => "Model name for locale"

      def create_locale_file
        ToLocale.add_model( options[:model] , locale)
      end
    end
  end
end