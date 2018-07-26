require_relative 'i_status'

class Library 
 include I_status

  attr_reader :name, :location, :library_system, :items

  def initialize(args = {})
    @name = args[:name]
    @location = args[:location]
    @items = args[:items]
    @library_system = args[:library_system]
  end

end
