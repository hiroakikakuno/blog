Rails.application.routes.draw do
  
  devise_for :users
  root 'blogs#top' 
  get  'blog'      =>  'blogs#top'     
  get  'blog/new'  =>  'blogs#new' 
  post 'blog'      =>  'blogs#create'
  delete 'blog/:id'  => 'blogs#destroy'
  patch   'blog/:id'  => 'blogs#update'
  get   'blog/:id/edit'  => 'blogs#edit'
end
