require "sinatra"
require "sinatra/reloader"


class MySite < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
    also_reload "lib"
  end

  get "/" do
    erb :index
  end

  post "/" do
    # TaskList::Queries.add_task(params)
    erb :index
  end

end
