class NoOption < ActiveRecord::Base
  
  def self.random
    no_option = NoOption.order("rand()").limit(1)
    return no_option.all
  end
  
end
