require_relative 'rent'

class Book 
	include Rent

  attr_reader :length, :title, :author, :format, :language

  def initialize(args = {})
    @length = args[:length]
    @title  = args[:title] #
    @author = args[:author]
    @format = args[:format]
    @language = args[:language] 
  end

end
