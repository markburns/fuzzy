require './lib/object'
describe "Fuzzy" do
  it "uses a fuzzy match algorithm to get the nearest matching method name" do
    class Egg
      instance_methods.each { |meth|
        undef_method(meth) unless meth.to_s =~ /\A__/ or %w(methods fuzzy_match).include? meth.to_s
      }
      def cheese

      end
    end

    Egg.new.fuzzy_match(:choose).should == :cheese
  end
end
