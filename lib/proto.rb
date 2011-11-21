require 'rubygems'
require 'commander/import'
require 'fileutils'
require 'yaml'
require File.join(File.dirname(__FILE__), 'proto', 'version')

module Proto
  class Setup


    # Generate a new Proto project
    def initialize(path)
      @paths = {
        :main => path,
        :views => File.join(path, 'views'),
        :layouts => File.join(path, 'views', 'layouts'),
        :partials => File.join(path, 'views', 'partials'),
        :stylesheets => File.join(path, 'stylesheets'),
        :styles => File.join(path, 'stylesheets', 'proto'),
        :examples => File.join(path, 'stylesheets', 'proto', 'examples'),
        :javascripts => File.join(path, 'javascripts'),
        :public => File.join(path, 'public'),
        :public_javascripts => File.join(path, 'public', 'javascripts'),
      }

      templates_path = File.join(File.dirname(__FILE__), '../', 'templates')
      @templates = {
        :app => File.join(templates_path, 'app.rb'),
        :views => File.join(templates_path, 'views'),
        :stylesheets => File.join(templates_path, 'stylesheets'),
        :javascripts => File.join(templates_path, 'javascripts'),
        :public => File.join(templates_path, 'public')
      }


      @paths.each do |key, value|
        FileUtils.mkdir_p(value)
      end

      FileUtils.cp( @templates[:app], File.join(@paths[:main], 'app.rb') )
      FileUtils.cp_r( @templates[:views], @paths[:main] )
      FileUtils.cp_r( @templates[:stylesheets], @paths[:main] )
      FileUtils.cp_r( @templates[:javascripts], @paths[:main] )
      FileUtils.cp_r( @templates[:public], @paths[:main] )
    end

  end
end
