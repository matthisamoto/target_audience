class DemoController < ApplicationController
  
  def index
    
    @noun = Noun.random
    @adjective = Adjective.random
    @prep_phrase = PrepPhrase.random
    @no_option = NoOption.random
    
  end
  
  def other_hello
    render(:text => "Stupid")
  end
  
end
