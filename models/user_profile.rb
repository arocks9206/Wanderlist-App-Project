require_relative('../db/sql_runner')

class UserProfile

def initialize(options)
  @full_name = options('full_name')
  @current_location = options('current_location')
  @id = options['id'].to_i if options['id']
end






end
