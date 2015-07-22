require 'rails/generators/base'

module Skyfire
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc "Copy Skyfire package manifest."
      source_root File.expand_path(File.join(File.dirname(__FILE__), 'templates'))


      def copy_build_script
        template 'gulpfile.js', 'gulpfile.js'
      end

      def copy_package_json
        template 'package.json', 'package.json'
        in_root do
          run('npm install')
        end
      end
    end
  end
end
