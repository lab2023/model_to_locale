require 'rails/generators'
require 'rails/generators/base'
require 'model_to_locale/to_locale'

module ModelToLocale
  module Generators
    class CreateGenerator < ::Rails::Generators::Base
      argument :locale, :type => :string, default: "tr"

      def create_locale_file
        ToLocale.create(locale)
      end
    end
  end
end