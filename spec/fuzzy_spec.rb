debugger
require './lib/fuzzy'


describe "Fuzzy" do
  class BlankishSlate
    instance_methods.each do |meth|
      undef_method(meth) unless(meth.to_s =~ /\A__/ or %w(method_missing eval debugger send methods fuzzy_match).include? meth.to_s)
    end
  end

  describe "#fuzzy_match" do
    it "matches the nearest method name" do
      class Egg < BlankishSlate #so we don't match things not in the tests
        include Fuzzy
        def cheese
        end

        def shoe
        end
      end

      Egg.new.fuzzy_match(:chase).should == :cheese
      Egg.new.fuzzy_match(:shoes).should == :shoe
    end
  end

  describe "#method_missing" do
    it "calls the method you meant to call" do
      class Horse < BlankishSlate
        include Fuzzy

        def dog
          "cat"
        end

        def spider
          "fly"
        end
      end

      Horse.new.god.should == "cat"
      Horse.new.spyder.should == "fly"
    end
  end
end
