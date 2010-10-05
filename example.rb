#
class ExampleApp < Sinatra::Base
  set :env, (ENV['RACK_ENV'] ? ENV['RACK_ENV'].to_sym : :development)

  # stupid favicon.ico
  get %r{/favicon.*} do
    # Nothing
  end

  # Main page, this is where documentation should go
  get '/' do
    "Hello World"
  end

  # Version of the API
  get '/version' do
    APP_VERSION
  end
end
