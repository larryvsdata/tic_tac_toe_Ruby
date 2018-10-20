class Player

attr_reader :token
@@Players = []

  def initialize (token)
    @token = token
    @@Players << self
  end
end
