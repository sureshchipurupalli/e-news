class NewsController < ApplicationController
before_action :set_news, only: [:show, :edit, :update]
before_action :authenticate_user!, except: [:show, :index ]
def index
 @news = News.all

end
def new
    @news = News.new
end

 def show
 @news_photos = @news.news_photos
 end


  def create
    @news = News.new(news_params)
    if @news.save
      if params[:images]
        params[:images].each do |image|
          @news.news_photos.create(image: image)
        end
      end

      @news_photos = @news.news_photos
      redirect_to edit_news_path(@news), notice: "Saved..."
    else
      render :new
    end
  end

  def edit
     @news_photos = @news.news_photos
  end

   def update
      if @news.update(news_params)
      if params[:images]
        params[:images].each do |image|
          @news.news_photos.create(image: image)
        end
      end
      redirect_to edit_news_path(@news), notice: "Updated..."
    else
      render :edit
    end
  end

  
  def destroy
    @news = News.find(params[:id])
    @news.destroy

    respond_to do |format|
      format.html { redirect_to news_index_path }
     # format.json { head :no_content }
   end
 end

  
  def destroy
    @news = News.find(params[:id])
    @news.destroy

    respond_to do |format|
      format.html { redirect_to news_index_path }
     # format.json { head :no_content }
   end
 end


   
private
  def set_news
    @news = News.find(params[:id])
  end 

def news_params
    params.require(:news).permit( :title, :description, :category, :keywords)
  end



end
