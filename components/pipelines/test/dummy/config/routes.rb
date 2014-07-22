Rails.application.routes.draw do

  mount Pipelines::Engine => "/pipelines"
end
