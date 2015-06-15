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
      task_name = args[0][:name] #the params hash is in an array called args
      task_description = args[0][:description]
      task_complete_by = args[0][:complete_by]
      task_completed_date = args[0][:completed_date]
      # prepare your statement
      statement = "INSERT INTO task_list (name, description, complete_by, completed_date) values('#{task_name}', '#{task_description}', '#{task_complete_by}', '#{task_completed_date}');"

      query!(statement)
      # call `query!` to interact with the database
      # determine what should be returned
    end

    def add_completed_date(*args)
      task_id = args[0][:id]
      task_completed_date = args[0][:completed_date]

      statement = "UPDATE task_list SET completed_date='#{task_completed_date}' WHERE id='#{task_id}';"

      query!(statement)

    end


    # def santitize(*args)
    #
    # end
  end
end
