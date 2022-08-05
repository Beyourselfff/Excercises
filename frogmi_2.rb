require_relative 'frogmi'

class Store < Incident

  def initialize
    @incidents = []
  end

end

new_store = Store.new
p new_store
