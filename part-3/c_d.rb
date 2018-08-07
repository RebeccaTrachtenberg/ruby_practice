require_relative 'rent'

class CD 

  include Rent
  
  attr_reader :runtime, :title, :artist, :label

  def initialize(args ={})
    @runtime = args[:runtime]
    @title   = args[:title] #
    @artist  = args[:artist]
    @label   = args[:label]
  end

end
