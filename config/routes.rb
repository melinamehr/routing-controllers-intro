Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'pages#welcome'

get '/welcome' => 'pages#welcome'

get '/about' => 'pages#about'

get '/kitten/:size' => 'pages#kitten', as: 'one_kitten'

get 'kittens/:size' => 'pages#kittens', as: 'many_kittens'

get '/contest' => 'pages#contest'

get '/secrets/:magic_word' => 'pages#secrets', as: 'surprise'


end
