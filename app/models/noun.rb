class Noun < ActiveRecord::Base
  
  def self.random
    noun = Noun.order("rand()").limit(1)
    return noun.all
  end
  
end