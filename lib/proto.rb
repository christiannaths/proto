require 'proto/version'
require 'rubygems'
require 'commander/import'
require 'fileutils'
require 'yaml'

module Proto
  class Setup

    # Generate a new Proto project
    def initialize(path)
      PATHS = {
        :main => path,
        :views => File.join(path, 'views'),
        :layouts => File.join(path, 'views', 'layouts'),
        :partials => File.join(path, 'views', 'partials'),
        :stylesheets => File.join(path, 'stylesheets'),
        :proto_styles => File.join(path, 'stylesheets', 'proto'),
        :proto_examples => File.join(path, 'stylesheets', 'proto', 'examples'),
        :javascripts => File.join(path, 'javascripts'),
        :public => File.join(path, 'public'),
        :public_javascripts => File.join(path, 'public', 'javascripts')
      }

      PATHS.each do |key, value|
        FileUtils.mkdir_p(value)
      end
      FileUtils.cd(PATH[:main])
    end

  end
end
