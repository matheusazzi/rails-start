Rails.application.routes.draw do
  root 'home#index'

  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)
end
