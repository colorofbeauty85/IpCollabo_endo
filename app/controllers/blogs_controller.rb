class BlogsController < ApplicationController

	def index #一覧画面 アクションたいやきを渡す人 
    	@blogs = Blog.all
	end

	def new   #たいやきの注文を聞く人
		@blog = Blog.new
		end

	def create #たいやきを作る人
		@blog = Blog.new(blog_params)
		#データを受け取る
		@blog.save
			   #保存
		redirect_to '/blogs'
		#たいやきを渡すのを頼む
			   #一覧ページに飛ぶ
	end

	private #↓全てが影響される ファイルの中でしか使えない
		def blog_params   #ストロングパラメータ
						  #入力フォームでのデータ書き換えを拒否
			params.require(:blog).permit(:title, :body, :author)
		end

	#params.require(モデル).permit(カラム)


end

