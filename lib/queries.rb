require "sqlite3"
require "./lib/database"

module TaskList
  class Queries < Database

    def show_all_tasks
      statement = "SELECT * FROM task_list;"
      query!(statement)
    end

    def add_task(*args)
      # santitize/validate your arguments
      name = args[0][:name] #the params hash is in an array called args
      # prepare your statement
      statement = "INSERT INTO task_list (name, description, completed_date) values("");"

      # call `query!` to interact with the database
      # determine what should be returned


    end

    # def santitize(*args)
    #
    # end
  end
end
