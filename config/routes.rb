Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # form for adding a new task
  get '/tasks/new', to: 'tasks#new', as: :new_task
  # send the information
  post '/tasks', to: 'tasks#create'

  # list all tasks
  get '/tasks', to: 'tasks#index'

  # view the details of tasks
  get '/tasks/:id', to: 'tasks#show', as: :task

  # get a page for the from to edit
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # need a place to send the edited information
  patch '/tasks/:id', to: 'tasks#update'

  # Destroy
  delete '/tasks/:id', to: 'tasks#destroy'
end
