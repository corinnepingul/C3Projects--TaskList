require "sqlite3"

db = SQLite3::Database.new "db/tasklist.db"

db.execute "CREATE TABLE task_list
  (id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  description TEXT,
  complete_by TEXT,
  completed_date TEXT);"

db.close if db
