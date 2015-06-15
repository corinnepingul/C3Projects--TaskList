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
    new_query = TaskList::Queries.new("tasklist.db")
    @completed_date = new_query.add_completed_date(params)
    @all_tasks = new_query.show_all_tasks
    erb :index
  end

  get "/add_task" do
    erb :add_task
  end

  post "/add_task" do
    new_query = TaskList::Queries.new("tasklist.db")
    @add_task = new_query.add_task(params)
    @all_tasks = new_query.show_all_tasks
    erb :index
  end

end
