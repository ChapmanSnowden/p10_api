get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/' do
  erb :index
end

get '/:team_id' do
  @team = params[:team_id]
  @player = FantasyPlayer.where(team_id:(params[:team_id]))
  # p '-' * 50
  # p params[:team_id]  
  erb :player_roster
end

post '/' do
  FantasyPlayer.create(team_id: "#{params[:team_id]}")
  redirect "/#{params[:team_id]}"
end
