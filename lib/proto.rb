require 'rubygems'
require 'proto/version'
require 'commander/import'
require 'fileutils'
require 'yaml'

module Proto
  class Setup


    # Generate a new Proto project
    def initialize(path)
      # Create the main project directory
      FileUtils.mkdir(path)


      templates_path = File.join(File.dirname(__FILE__), '../', 'templates')
      @templates = {
        :app => File.join(templates_path, 'app.rb'),
        :views => File.join(templates_path, 'views'),
        :stylesheets => File.join(templates_path, 'sass'),
        :javascripts => File.join(templates_path, 'coffeescripts'),
        :public => File.join(templates_path, 'public'),
      }

      FileUtils.cp(@templates[:app], File.join(path, 'app.rb'))
      FileUtils.cp_r(@templates[:views], path)
      FileUtils.cp_r(@templates[:stylesheets], path)
      FileUtils.cp_r(@templates[:javascripts], path)
      FileUtils.cp_r(@templates[:public], path)
    end

  end

end
