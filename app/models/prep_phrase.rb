class PrepPhrase < ActiveRecord::Base
  
  def self.random
    prep_phrase = PrepPhrase.order("rand()").limit(1)
    return prep_phrase.all
  end
  
end
