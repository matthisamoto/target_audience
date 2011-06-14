class Adjective < ActiveRecord::Base
  
  def self.random
    adjective = Adjective.order("rand()").limit(1)      
    return adjective.all
  end
  
end
