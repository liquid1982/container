Rails.application.routes.draw do
  # %w(candidates jobs).each do |subdomain|
  #   constraints subdomain: subdomain do
  #     mount subdomain.titleize.constantize::Engine => '/', as: "#{subdomain}_engine"
  #   end
  # end

  %w(candidates jobs).each do |subdomain|
    mount subdomain.titleize.constantize::Engine => "/#{subdomain}", as: "#{subdomain}_engine"
  end

  root 'pages#home'
end
