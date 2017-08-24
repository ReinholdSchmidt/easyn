class ChoicesController < ApplicationController

  def destroy
    @toolbox = Toolbox.find(params[:toolbox_id])
    @choice = @toolbox.choices.find(params[:id])
    @choice.destroy
    redirect_to toolbox_path(@toolbox)
  end


  def create
    @toolbox = Toolbox.find(params[:toolbox_id])
    @choice = @toolbox.choices.create(choice_params)

    redirect_to toolbox_path(@toolbox)
  end


private

  def choice_params
    params.require(:choice).permit(:title, :description, :example, :rating, :image, :thumbnail)
  end


end
