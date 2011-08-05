class PrepPhrasesController < ApplicationController
  
  layout 'admin'
  
  def index
     # list
     # render('list')
     redirect_to("#{root_path}admin/prep_phrases")
   end

   def list
     @prep_phrases = PrepPhrase.order("prep_phrases.prep_phrase ASC")
   end

   def show
     @prep_phrase = PrepPhrase.find(params[:id])
   end

   def new
     @prep_phrase = PrepPhrase.new
   end

   def create
     @prep_phrase = PrepPhrase.new(params[:prep_phrase])
     if @prep_phrase.save
       flash[:notice] = "Successfully Created Phrase \"#{@prep_phrase.prep_phrase}\""
       redirect_to(:action => 'index')
     else
       render('new')
     end
   end

   def edit
     @prep_phrase = PrepPhrase.find(params[:id])
   end

   def update
     @prep_phrase = PrepPhrase.find(params[:id])
     if @prep_phrase.update_attributes(params[:prep_phrase])
       flash[:notice] = "Successfully Updated Phrase \"#{@prep_phrase.prep_phrase}\""
       redirect_to(:action => 'index')
     else
       render('edit')
     end
   end

   def delete
     @prep_phrase = PrepPhrase.find(params[:id])
   end

   def destroy
     prep_phrase = PrepPhrase.find(params[:id])
     flash[:notice] = "Successfully Deleted Phrase \"#{prep_phrase.prep_phrase}\""
     prep_phrase.destroy
     redirect_to(:action => 'index')
   end
  
end
