require "sinatra"
require "sinatra/reloader"
require "./lib/queries"

class MySite < Sinatra::Base
    register Sinatra::Reloader

  get "/" do
    new_query = TaskList::Queries.new("tasklist.db")
    @all_tasks = new_query.show_all_tasks
    erb :index
  end

  post "/" do
    # TaskList::Queries.add_task(params)
    erb :index
  end

end
