class DemoController < ApplicationController
  
  def index

    Adjective.random.each do |adjective|
      @adjective = adjective.adjective
    end
    
    Noun.random.each do |noun|
      @noun = noun.noun.downcase
    end
    
    PrepPhrase.random.each do |prep_phrase|
      @prep_phrase = prep_phrase.prep_phrase.downcase
    end 
    
    NoOption.random.each do |no_option|
      @no_option = no_option.no_option
    end
    
  end
  
  def other_hello
    render(:text => "Stupid")
  end
  
end
