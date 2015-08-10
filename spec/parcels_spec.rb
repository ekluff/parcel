require('rspec')
require('parcel')

describe(Parcels) do
  describe('#parcel') do
    it('returns the product of three numbers') do
      test_parcel = Parcels.new(10,10,20)
      expect(test_parcel.parcel).to(eq(2000))
    end
  end
end
