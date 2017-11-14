Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# get '/blogs' => 'blogs#index'
resources :blogs
	#指定されたURLが入力されたら => (コントローラ#アクション）
	#コントローラにあるdefのアクション

post '/posts' => 'posts#create'

# <h1>藤原日向子


end
