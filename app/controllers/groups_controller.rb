class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @part = Participant.new
    @part.user = current_user
    @part.group = @group
    if @group.save
      @part = Participant.new
      @part.user = current_user
      @part.group = @group
      @part.save
      redirect_to groups_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def group_params
    params.require(:group).permit(:name)
  end
end
