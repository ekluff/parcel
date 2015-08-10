class Parcels
  define_method(:initialize) do |length, width, height, weight|
    # @length = length
    # @width = width
    # @height = height
    @weight = weight
    @volume = length * width * height
  end

  define_method(:volume) do
    @volume
  end

  define_method(:cost_to_ship) do |distance, days_to_delivery|
    @cost_to_ship = @volume/100 + @weight/100 + distance/10 + days_to_delivery/2
  end
end
