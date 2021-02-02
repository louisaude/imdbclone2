class ListEntriesController < ApplicationController

  before_action :find_list, only: [:index, :create, :show]
  def new
    @list_entry = ListEntry.new
  end

  def index
    # @list = List.find(params[:list_id])
    @list_entries = ListEntry.where(list: @list)
  end
  def show
  end

  def create 
    @list_entry = ListEntry.new(entry_params)
    # @list = List.find(params[:list_id])
    if @list_entry.save
      redirect_to root_path
    else
      render "new"
    end
  end

  private
  def find_list
    @list = List.find(params[:list_id])
  end
  
  def entry_params
    params.require(:list_entry).permit(:comment, :list_id, :movie_id)
  end

end
