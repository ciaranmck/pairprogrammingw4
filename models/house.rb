require_relative("../db/sql_runner")

class House

attr_reader :id, :name

def initialize(options)
  @id = options['id'].to_i
  @name = options['name']
end

def save 
  sql = "INSERT INTO houses(name) VALUES ('#{@name}') RETURNING id;"
  @id = SqlRunner.run(sql)[0]['id'].to_i()
end








end