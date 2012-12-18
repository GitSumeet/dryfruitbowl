class SessionData
  
  attr_reader :userid
  attr_reader :firstname
  attr_reader :role
  
  def initialize(userid, firstname, role)
    @userid = userid
    @firstname = firstname
    @role = role
  end
  
end