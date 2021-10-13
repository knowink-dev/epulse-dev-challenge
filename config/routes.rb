Rails.application.routes.draw do

  apipie
  namespace :api do
    namespace :v1 do
      get '/precincts/search/:query', to: 'precincts#search', as: :precincts_search
      resources :precincts
      get '/elections/elections_with_voters', to: 'elections#elections_with_voters', as: :elections_with_voters
      resources :elections
    end
  end
  # for expedience, normal routes, instead of nested.
  resources :precincts do
    get "/assign_poll_workers", to: "precincts#assign_poll_workers", as: :assign_poll_workers
  end
  resources :poll_workers
  resources :elections do
    get "/register_candidate", to: "elections#register_new_candidate", as: :register_new_candidate
  end
  resources :election_candidates
  resources :voters
  resources :votes

  controller :voter_kiosk do
    get '/voter_registration', to: "voter_kiosk#voter_registration", as: :voter_registration
    get '/election_selection', to: "voter_kiosk#election_selection", as: :election_selection
    get '/vote_for_election_candidate/:election_id/:voter_id', to: "voter_kiosk#vote_for_election_candidate", as: :vote_for_election_candidate
    get '/cast_vote/:voter_id/:election_candidate_id/:election_id', to: "voter_kiosk#create_vote", as: :create_vote
    get '/voter_search', to: 'voter_kiosk#voter_search', as: :voter_search
  end

  get '/election_stats/:id', to: "election_stats#show", as: :election_stats

  root 'home#index'
end
