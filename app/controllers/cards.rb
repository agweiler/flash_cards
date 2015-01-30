
post "/game_home" do
  answer = params[:card][:capital_name]
  country_name = params[:card][:country_name]
  card = Card.where(country_name: country_name).first


  if answer == card.capital_name

  end
  erb :game_home
  end


###NOT DONE--- work on this its almost there!!!