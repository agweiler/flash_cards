post '/login' do
  #if validated

  @user = User.authenticate(params[:user][:username], params[:user][:password])
  if @user.nil?
    erb :signup
  else
    session[:user] = @user
    # erb :secret
    redirect to '/pick_deck'
  end
end

get '/signup' do

  erb :signup
end

post '/signup' do
  @user = User.create(params[:user])
  session[:user] = @user
  if @user.id.nil?
    redirect to '/signup'
  else
    # erb :secret
    redirect to '/pick_deck'
  end
end

get '/logout' do
  session.clear
  redirect to '/'
end

get '/pick_deck' do
  if session[:user].nil?
    redirect to '/signup'
  else
    erb :pick_deck
  end
end

