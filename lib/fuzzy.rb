require "fuzzy/version"
require 'fuzzystringmatch'

module FuzzyBear
   def method_missing sym, *args, &block
    chosen_method = fuzzy_match sym
    puts "You requested #{sym}, our survey says: #{chosen_method}"
    self.send chosen_method, *args, &block
  end


  def fuzzy_match requested_method
    max = - (1.0/0)
    matcher = FuzzyStringMatch::JaroWinkler.new.create :pure

    chosen_method = nil
    methods.each do |m|
      distance = matcher.getDistance m.to_s, requested_method.to_s
      if distance > max
        max = distance
        chosen_method = m.to_sym unless m.to_sym == :method_missing
      end

    end
    chosen_method
  end
 # Your code goes here...
end
