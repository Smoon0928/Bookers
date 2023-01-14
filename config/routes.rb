Rails.application.routes.draw do
  post 'books' => 'books#create'
  get 'books'=> 'books#index'
  get 'books/:id' => 'books#show', as: 'book'
  get 'books/:id/edit'=>'books#edit',as: 'edit_book'
  delete 'books/:id' => 'books#destroy',as: 'destroy_book'
  patch 'books/:id'=>'books#update',as:"update_book"
  root 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
