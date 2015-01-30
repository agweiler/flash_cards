enable :sessions

post '/login' do
  #if validated
@user = User.authenticate(params[:user][:username], params[:user][:password])

  if @user.nil?
    erb :signup
  else
    session[:user] = @user
    session[:user_id] = @user.id
    # erb :secret
    redirect to "/pick_deck"
  end
end

get '/logout' do
  session.clear
  redirect to '/'
end