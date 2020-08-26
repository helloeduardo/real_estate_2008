class House
  attr_reader :price, :address, :rooms

  def initialize(price, address)
    @price = price[1..-1].to_i
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    price > 500000
  end

  def rooms_from_category(category)
    rooms.find_all do |room|
      room.category == category
    end
  end

  def area
    rooms.reduce(0) do |sum, room|
      sum + room.area
    end
  end

end
