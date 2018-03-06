class ArticlesController < ApplicationController
  def new
  end
  def create
    # art= params[:article]
    # puts "El titulo es = #{art["title"]}"
    # render plain: params[:article].inspect

    # @article = Article.new(params[:article]) 

    @article = Article.new(article_params)

    @article.save
    redirect_to @article
  end
  private
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
