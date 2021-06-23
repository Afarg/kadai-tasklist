Rails.application.routes.draw do
    #以下のコメント行はresource :tasks内のroutes(復習のために残しています。不要ではありません。)
    
    # get 'tasks/:id', to: 'tasks#show'
    # post 'tasks', to: 'tasks#create'
    # put 'tasks/:id', to: 'tasks#update'
    # delete 'tasks/:id', to: 'tasks#destroy'
    
    # # index: show の補助ページ
    # get 'tasks', to: 'tasks#index'
    
    # # new: 新規作成用のフォームページ
    # get 'tasks/new', to: 'tasks#new'
    
    # # edit: 更新用のフォームページ
    # get 'tasks/:id/edit', to: 'tasks#edit'
    
    root to: 'tasks#index'
    
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'
    
    get 'signup', to: 'users#new'
    
   
    #上記のコメント行と同じコード(意味)
    resources :tasks
    
    resources :users, only: [:create]
    
    
end