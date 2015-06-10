require "sqlite3"

db = SQLite3::Database.new "taskList.db"

db.execute "CREATE TABLE task-list
  (id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  description TEXT,
  completed-date TEXT);"

db.close if db
