class ToolboxesController < ApplicationController

  before_action :set_toolbox, only: [:show, :edit, :update, :destroy]
  def new
    @toolbox = Toolbox.new

  end

  def create
    @toolbox = Toolbox.new(toolbox_params)

    if @toolbox.save
       redirect_to @toolbox
    else
      render 'new'
    end
  end


  def index
    @toolboxes = Toolbox.all
  end

  def update
    if @toolbox.update(toolbox_params)
      redirect_to @toolbox
    else
      render 'edit'
    end

  end

  def show

  end

  def edit

  end

  def destroy
    @toolbox.destroy
    redirect_to toolboxes_path
  end


  private

  def toolbox_params
    params.require(:toolbox).permit(:title, :description, :gruppe, :kategorie)
  end

  def set_toolbox
    @toolbox = Toolbox.find(params[:id])
  end

end
