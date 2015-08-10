require('rspec')
require('parcel')

describe(Parcels) do
  describe('#volume') do
    it('returns the product of three numbers') do
      test_parcel = Parcels.new(10,10,20,0)
      expect(test_parcel.volume).to(eq(2000))
    end
  end

  describe('#cost_to_ship') do
    it('returns the cost to ship a parcel based on volume, weight, distance, and speed of delivery') do
      test_parcel = Parcels.new(10, 10, 20, 100)
      expect(test_parcel.cost_to_ship(100, 2)).to(eq(32)) #volume/100 + (weight/100) + distance/10 + days/2
    end
  end
end
