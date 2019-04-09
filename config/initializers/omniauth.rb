Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :github, ENV['GITHUB_RAILS_DEMO_KEY'], ENV['GITHUB_RAILS_DEMO_SECRET']
end
