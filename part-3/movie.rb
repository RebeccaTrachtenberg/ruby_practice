require_relative 'rent'

class Movie 

 include Rent
 
  attr_reader :runtime, :title, :format

  def initialize(args ={})
    @runtime = args[:runtime]
    @title   = args[:title] #
    @format  = args[:format]
  end

end
