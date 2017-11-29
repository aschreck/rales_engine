Rails.application.routes.draw do

namespace :api do
  namespace :v1 do
    resources :merchants,         only: [:index, :show]
    resources :transactions,      only: [:index, :show]
    resources :customers,         only: [:index, :show]
    resources :invoices,          only: [:index, :show]
    resources :invoice_items,     only: [:index, :show]
    resources :items,             only: [:index, :show]
  end
end

get '/api/v1/merchants/:id/revenue', to: 'api/v1/merchants/revenue#show'
# get "/api/v1/merchants/:id/customers_with_pending_invoices", to: 'api/v1/analytics#customers_with_pending_invoices'

end
