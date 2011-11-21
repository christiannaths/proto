require 'sinatra'
require 'haml'
require 'sass'
require 'coffee-script'

set :sass, :style => :expanded
set :views, ['views', 'views/layouts', 'views/partials', 'sass', 'scss', 'coffeescripts']


helpers do
  def link(name, url="#")
    "<a href='#{ url }'>#{ name }</a>"
  end

  def img(url)
    "<img src='#{ url }' alt='' />"
  end

  def stylesheet(name)
    "<link rel='stylesheet' type='text/css' href='/#{ name.to_s }.css' />"
  end

  def javascript(name)
    if name == :jquery
      '<script type="text/javascript" src="/javascripts/jquery.min.js"></script>'
    elsif name == :html5shim
      '<script type="text/javascript" src="/javascripts/html5shim.min.js"></script>'
    else
      "<script type='text/javascript' src='/#{ name.to_s }.js'></script>"
    end
  end

  def find_template(views, name, engine, &block)
    Array(views).each { |v| super(v, name, engine, &block) }
  end
end


get '/styles.css' do
  sass :styles
end

get '/application.js' do
  coffee :application
end

get '/' do
  haml :index
end






get '/help/columns' do
  haml :columns
end
