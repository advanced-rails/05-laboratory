Rails.application.routes.draw do
    root to: 'home#index'
    get '/die', to: 'dice#roll'
    get '/clock', to: 'clock#time'
    get '/math/root/:x', to: 'math#root'
    get '/math/add', to: 'math#showadd'
    post '/math/add', to: 'math#computeadd'
end
