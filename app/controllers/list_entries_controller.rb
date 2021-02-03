class ListEntriesController < ApplicationController

  before_action :find_list, only: [:index, :create, :show, :new]
  def new
    @list_entry = ListEntry.new
  end

  def index
    @list_entries = ListEntry.where(list: @list)
  end
  def show
  end

  def destroy
    @list_entry = ListEntry.find(params[:list_id])
    @list_entry.destroy
    redirect_to list_list_entries_path
  end

  def create 
    @list_entry = ListEntry.new(entry_params)
    @list_entry.list_id = params[:list_id]
    if @list_entry.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
  def find_list
    @list = List.find(params[:list_id])
  end
  
  def entry_params
    params.require(:list_entry).permit(:comment, :movie_id)
  end

end
