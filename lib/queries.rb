require "sqlite3"

module TaskList
  class Queries < Database

    def add_task(*args)
      # santitize/validate your arguments
      name = args[0][:name] #the params hash is in an array called args
      # prepare your statement
      statement = "INSERT INTO tasklist (name, description, completed_date) values("");"

      # call `query!` to interact with the database
      # determine what should be returned


    end

    # def santitize(*args)
    #
    # end
  end
end
