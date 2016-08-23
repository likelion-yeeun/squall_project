Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV["ID"], ENV["SECRET"],
    {
      :name => "google",
      :scope => "email, profile, plus.me, http://gdata.youtube.com",
      :prompt => "select_account",
      :image_aspect_ratio => "square",
      :image_size => 50
    }
end
