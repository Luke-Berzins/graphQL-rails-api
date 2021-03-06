Rails.application.routes.draw do

  root 'pages#index'

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "graphql#execute"
  end

 

  get "/articles", to: "articles#index"
  post "/graphql", to: "graphql#execute"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
