require 'fuzzystringmatch'




class Object
  def fuzzy_match requested_method
    max = - (1.0/0)
    matcher = FuzzyStringMatch::JaroWinkler.new.create :pure

    chosen_method = nil

    methods.each do |m|
      distance = matcher.getDistance m.to_s, requested_method.to_s
      if distance > max
        max = distance
        chosen_method = m.to_sym
      end
    end
    chosen_method
  end
end
