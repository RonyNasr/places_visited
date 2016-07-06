require("rspec")
require("place.rb")
require("pry")

describe (Place) do
  before do
    Place.clear()
  end

  describe("#name") do
    it("displays the name of the place") do
      test_place = Place.new("Portland")
      expect(test_place.name()).to(eq("Portland"))
    end
  end

  describe(".all") do
    it ("lists all the places") do
      expect(Place.all()).to(eq([]))
    end
  end

  describe("#save") do
    it ("add place to array of places") do
      test_place = Place.new("Portland")
      test_place.save()
      expect(Place.all()).to(eq([test_place]))
    end
  end

  describe(".clear") do
    it("empties the list of saved places")do
    Place.new("Portland").save()
    Place.clear()
    expect(Place.all()).to(eq([]))
    end
  end

end
