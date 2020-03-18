# == Route Map
#
#                                Prefix Verb   URI Pattern                                                                              Controller#Action
#                                  root GET    /                                                                                        pages#index
#                      new_user_session GET    /users/sign_in(.:format)                                                                 devise/sessions#new
#                          user_session POST   /users/sign_in(.:format)                                                                 devise/sessions#create
#                  destroy_user_session DELETE /users/sign_out(.:format)                                                                devise/sessions#destroy
#                     new_user_password GET    /users/password/new(.:format)                                                            devise/passwords#new
#                    edit_user_password GET    /users/password/edit(.:format)                                                           devise/passwords#edit
#                         user_password PATCH  /users/password(.:format)                                                                devise/passwords#update
#                                       PUT    /users/password(.:format)                                                                devise/passwords#update
#                                       POST   /users/password(.:format)                                                                devise/passwords#create
#              cancel_user_registration GET    /users/cancel(.:format)                                                                  devise/registrations#cancel
#                 new_user_registration GET    /users/sign_up(.:format)                                                                 devise/registrations#new
#                edit_user_registration GET    /users/edit(.:format)                                                                    devise/registrations#edit
#                     user_registration PATCH  /users(.:format)                                                                         devise/registrations#update
#                                       PUT    /users(.:format)                                                                         devise/registrations#update
#                                       DELETE /users(.:format)                                                                         devise/registrations#destroy
#                                       POST   /users(.:format)                                                                         devise/registrations#create
#                           board_lists GET    /boards/:board_id/lists(.:format)                                                        lists#index
#                                       POST   /boards/:board_id/lists(.:format)                                                        lists#create
#                        new_board_list GET    /boards/:board_id/lists/new(.:format)                                                    lists#new
#                             edit_list GET    /lists/:id/edit(.:format)                                                                lists#edit
#                                  list GET    /lists/:id(.:format)                                                                     lists#show
#                                       PATCH  /lists/:id(.:format)                                                                     lists#update
#                                       PUT    /lists/:id(.:format)                                                                     lists#update
#                                       DELETE /lists/:id(.:format)                                                                     lists#destroy
#                                boards GET    /boards(.:format)                                                                        boards#index
#                                       POST   /boards(.:format)                                                                        boards#create
#                             new_board GET    /boards/new(.:format)                                                                    boards#new
#                            edit_board GET    /boards/:id/edit(.:format)                                                               boards#edit
#                                 board GET    /boards/:id(.:format)                                                                    boards#show
#                                       PATCH  /boards/:id(.:format)                                                                    boards#update
#                                       PUT    /boards/:id(.:format)                                                                    boards#update
#                                       DELETE /boards/:id(.:format)                                                                    boards#destroy
#                            list_cards GET    /lists/:list_id/cards(.:format)                                                          cards#index
#                                       POST   /lists/:list_id/cards(.:format)                                                          cards#create
#                         new_list_card GET    /lists/:list_id/cards/new(.:format)                                                      cards#new
#                             edit_card GET    /cards/:id/edit(.:format)                                                                cards#edit
#                                  card GET    /cards/:id(.:format)                                                                     cards#show
#                                       PATCH  /cards/:id(.:format)                                                                     cards#update
#                                       PUT    /cards/:id(.:format)                                                                     cards#update
#                                       DELETE /cards/:id(.:format)                                                                     cards#destroy
#                                 lists GET    /lists(.:format)                                                                         lists#index
#                                       POST   /lists(.:format)                                                                         lists#create
#                              new_list GET    /lists/new(.:format)                                                                     lists#new
#                                       GET    /lists/:id/edit(.:format)                                                                lists#edit
#                                       GET    /lists/:id(.:format)                                                                     lists#show
#                                       PATCH  /lists/:id(.:format)                                                                     lists#update
#                                       PUT    /lists/:id(.:format)                                                                     lists#update
#                                       DELETE /lists/:id(.:format)                                                                     lists#destroy
#                            todo_items GET    /todo_items(.:format)                                                                    todo_items#index
#                             todo_item PATCH  /todo_items/:id(.:format)                                                                todo_items#update
#                                       PUT    /todo_items/:id(.:format)                                                                todo_items#update
#         rails_mandrill_inbound_emails POST   /rails/action_mailbox/mandrill/inbound_emails(.:format)                                  action_mailbox/ingresses/mandrill/inbound_emails#create
#         rails_postmark_inbound_emails POST   /rails/action_mailbox/postmark/inbound_emails(.:format)                                  action_mailbox/ingresses/postmark/inbound_emails#create
#            rails_relay_inbound_emails POST   /rails/action_mailbox/relay/inbound_emails(.:format)                                     action_mailbox/ingresses/relay/inbound_emails#create
#         rails_sendgrid_inbound_emails POST   /rails/action_mailbox/sendgrid/inbound_emails(.:format)                                  action_mailbox/ingresses/sendgrid/inbound_emails#create
#          rails_mailgun_inbound_emails POST   /rails/action_mailbox/mailgun/inbound_emails/mime(.:format)                              action_mailbox/ingresses/mailgun/inbound_emails#create
#        rails_conductor_inbound_emails GET    /rails/conductor/action_mailbox/inbound_emails(.:format)                                 rails/conductor/action_mailbox/inbound_emails#index
#                                       POST   /rails/conductor/action_mailbox/inbound_emails(.:format)                                 rails/conductor/action_mailbox/inbound_emails#create
#     new_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/new(.:format)                             rails/conductor/action_mailbox/inbound_emails#new
#    edit_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id/edit(.:format)                        rails/conductor/action_mailbox/inbound_emails#edit
#         rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#show
#                                       PATCH  /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#update
#                                       PUT    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#update
#                                       DELETE /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#destroy
# rails_conductor_inbound_email_reroute POST   /rails/conductor/action_mailbox/:inbound_email_id/reroute(.:format)                      rails/conductor/action_mailbox/reroutes#create
#                    rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
#             rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#                    rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
#             update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#                  rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  root to: "pages#index"
  devise_for :users

  resources :boards do
    resources :lists, shallow: true
  end

  resources :lists do
    resources :cards, shallow: true
  end

  resources :todo_items, only: [:index, :update, :show]

  # resources :cards, shallow: true do
  #   resources :due_dates
  #   resources :todo_lists
  #   resources :tech_stacks
  # end
end
