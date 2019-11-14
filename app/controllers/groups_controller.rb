class GroupsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_group, only: [:show, :edit, :update]

  def index
    @groups = Group.order('created_at DESC')
  end

  def show
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to groups_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @group.update_attributes(group_params)
      redirect_to group_path(@group)
    else
      render :edit
    end
  end

  private

  def group_params
    params.require(:group).permit(:title, :body, :youtube, :image, attachments: [])
  end

  def set_group
    @group = Group.find(params[:id])
  end
end
