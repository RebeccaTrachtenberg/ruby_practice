require_relative 'i_status'

class MediaKiosk < I_status
  attr_reader :name, :location, :items

  def initialize(args = {})
    @name = args[:name]
    @location = args[:location]
    @items = args[:items]
  end

end
