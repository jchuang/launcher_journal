class EntriesController < ApplicationController

  respond_to :html

  def index
    @entries = Entry.all.most_recent_first
  end

  def new
  end

  def create
    @entry = Entry.new(entry_params)

    if @entry.save
      redirect_to @entry, notice: 'Entry was successfully created.'
    else
      render action: 'new'
    end
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def edit
    @entry = Entry.find(params[:id])

    if @entry.update
      redirect_to @entry, notice: 'Entry was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.delete
    redirect_to entries_url
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def entry_params
    params.require(:entry).permit(:title, :content)
  end
end
