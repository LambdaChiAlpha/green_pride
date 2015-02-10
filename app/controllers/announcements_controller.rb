class AnnouncementsController < ApplicationController
  before_filter :require_login

  def index
    @announcements = Announcement.paginate(page: params[:page], per_page: 20).order(created_at: :desc)
  end

  def new
    @announcement = Announcement.new
  end

  def create
    announcement = Announcement.new(announcement_params)
    announcement.tag_list = params[:tags]
    if announcement.save
      flash[:success] = "Your announcement \"#{announcement.title}\" has been created!"
      redirect_to :announcements
    else
      redirect_to :back
    end
  end

  def show
    @announcement = Announcement.find(params[:id])
  end

  def tags
    respond_to do |f|
      f.json {
        render json: ActsAsTaggableOn::Tag.pluck(:name)
        .select {|n| n.include?(params[:query]) }
      }
    end
  end

  def tagged
    @tags = Set.new(params[:tags].split('/'))
    @announcements = Announcement.tagged_with(@tags.to_a).order(created_at: :desc).paginate(page: params[:page], per_page: 20)
  end

  def announcement_params
    params.require(:announcement).permit(:title, :body) ## Rails 4 strong params usage
  end
end
