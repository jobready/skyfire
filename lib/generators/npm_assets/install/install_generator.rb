require 'rails/generators/base'

module NpmAssets
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc "Copy SimpleForm default files"
      source_root File.expand_path(File.join(File.dirname(__FILE__), 'templates'))

      def copy_package_json
        template 'package.json', 'package.json'
        in_root do
          run('npm install')
        end
      end
    end
  end
end
