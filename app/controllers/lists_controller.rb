class ListsController < ApplicationController
  before_action :find_list, only: [:show, :destroy]
  def  new
    @list = List.new
  end

  def index
    @lists = List.where(user: current_user)
    @all_lists = List.all
  end

  def create 
    @list = List.new(lists_params)
    @list.user = current_user
    if @list.save
      redirect_to lists_path
    else
    render 'new'
    end
  end

  def destroy
    @list.destroy
    redirect_to lists_path
  end


  def show
    @entries = @list.list_entries.all 
  end

private

  def lists_params
    params.require(:list).permit(:title)
  end

  def find_list
    @list = List.find(params[:id])
  end
end
