Rails.application.config.middleware.use OmniAuth::Builder do
    provider :google_oauth2, ENV["google_client_id"], ENV["google_client_secret"], scope: 'userinfo.profile,youtube'

end

OmniAuth.config.on_failure do |env|
    error_type = env['omniauth.error.type']
    new_path = "#{env['SCRIPT_NAME']}#{OmniAuth.config.path_prefix}/failure?message=#{error_type}"
    [301, {'Location' => new_path, 'Content-Type' => 'text/html'}, []]
  end
