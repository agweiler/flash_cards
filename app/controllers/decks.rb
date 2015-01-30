get '/game_home' do
  if session[:user].nil?
    redirect to '/signup'
  else
    erb :game_home
  end
end