class ItemsController < ApplicationController
  
  def index
    @items = Item
    if params[:project_id]
      @items = @items.where(project_id: params[:project_id])
    end
    @items = @items.all
  end
  
  def show
    @item = Item.find(params[:id])
  end
  
  def new
    @item = Item.new
    @selected_project = params[:project_id] if params[:project_id]
  end
  
  def create
    @item = Item.new(params[:item])
    if @item.save
      redirect_to item_url(@item)
    else
      render :new
    end
  end
  
  def edit
    @item = Item.find(params[:id])
  end
  
  def update
    @item = Item.find(params[:id])
	  @item.update_attributes(params[:item])
		redirect_to item_url(@item)
  end
  
  def destroy
    @item = Item.find(params[:id])
    @item.destroy
		redirect_to project_url(@item.project)
  end
  
end
