class Room
  attr_reader :category, :area

  def initialize(category, length, width)
    @category = category
    @area = length * width.to_i
    @is_painted = false
  end

  def is_painted?
    @is_painted
  end

  def paint
    @is_painted = true
  end

end
