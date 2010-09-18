class AssetsController < ApplicationController

  def index
    @assets = Asset.all
  end

  def show
    @asset = Asset.find(params[:id])
  end

  def new
    @asset = Asset.new
  end

  def edit
    @asset = Asset.find(params[:id])
  end

  def create
    @asset = Asset.new(params[:asset])
    if @asset.save
      redirect_to(@asset, :notice => 'Asset was successfully created.')
    else
      render :action => "new"
    end
  end

  def update
    @asset = Asset.find(params[:id])

    if @asset.update_attributes(params[:asset])
      redirect_to(@asset, :notice => 'Asset was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @asset = Asset.find(params[:id])
    @asset.destroy
    redirect_to(assets_url)
  end
end

