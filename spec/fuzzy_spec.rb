require './lib/object'
describe "Fuzzy" do
  it "uses a fuzzy match algorithm to get the nearest matching method name" do
    class Egg
      def cheese

      end
    end

    Egg.new.fuzzy_match(:choose).should == :cheese
  end
end
