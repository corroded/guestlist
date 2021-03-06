class GuestsController < ApplicationController
  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
  end

  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.new(params[:guest])
    if @guest.save
      redirect_to @guest, :notice => "Successfully created guest."
    else
      render :action => 'new'
    end
  end

  def priority
    @guests = Guest.find_all_by_priority(params[:id])
  end

  def edit
    @guest = Guest.find(params[:id])
  end

  def update
    @guest = Guest.find(params[:id])
    @guest.attributes = {'group_ids' => []}.merge(params[:guest] || {})

    if @guest.update_attributes(params[:guest])
      redirect_to guests_url, :notice  => "Successfully updated guest."
    else
      render :action => 'edit'
    end
  end

  def sponsors
    @guests = Guest.sponsors
  end

  def destroy
    @guest = Guest.find(params[:id])
    @guest.destroy
    redirect_to guests_url, :notice => "Successfully destroyed guest."
  end
end
