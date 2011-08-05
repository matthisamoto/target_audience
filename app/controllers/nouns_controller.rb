class NounsController < ApplicationController
  
  layout 'admin'
  
  def index
    # list
    # render('list')
    redirect_to("#{root_path}admin/nouns")
  end
  
  def list
    @nouns = Noun.order("nouns.noun ASC")
  end
  
  def show
    @noun = Noun.find(params[:id])
  end
  
  def new
    @noun = Noun.new
  end
  
  def create
    @noun = Noun.new(params[:noun])
    if @noun.save
      flash[:notice] = "Successfully Created Noun \"#{@noun.noun}\""
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end
  
  def edit
    @noun = Noun.find(params[:id])
  end
  
  def update
    @noun = Noun.find(params[:id])
    if @noun.update_attributes(params[:noun])
      flash[:notice] = "Successfully Updated Noun \"#{@noun.noun}\""
      redirect_to(:action => 'index')
    else
      render('edit')
    end
  end
  
  def delete
    @noun = Noun.find(params[:id])
  end
  
  def destroy
    noun = Noun.find(params[:id])
    flash[:notice] = "Successfully Deleted Noun \"#{noun.noun}\""
    noun.destroy
    redirect_to(:action => 'index')
  end

end
