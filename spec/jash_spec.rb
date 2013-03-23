require "jash"

describe Jash do
  it "should be read like a JSON object" do
    h = {
      name: "John",
      items: [1,2,3],
      address: {
        state: "WA",
        city: "Seattle",
        zip: "98103",
        location: {
          lattitude: 47.6,
          longituide: 122.3,
        }
      }
    }

    j = Jash.new(h)

    j.address.zip.should == "98103"
    j.items.should == [1,2,3]
    j.address.state.should == "WA"
    j.address.location.lattitude == 47.6
  end

  it "should be written like a JSON object" do
    h = {
      name: "John",
      items: [1,2,3],
      address: {
        state: "WA",
        city: "Seattle",
        zip: "98103",
        location: {
          lattitude: 47.6,
          longituide: 122.3,
        }
      }
    }

    j = Jash.new(h)

    j.address = {
      state: "MA",
      city: "Boston",
      location: {
        lattitude: 42.4,
        longituide: 71.1,
      }
    }
    j.address.state.should == "MA"
    j.address.city.should == "Boston"
    j.address.location.lattitude == 42.4
  end
end
