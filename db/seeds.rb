
FFNerd.player_list.each do |player|
  FantasyPlayer.create({name: player.name,
    team_id: player.team,
    position: player.position,
    ffn_key: player.player_id}) 
end

FFNerd.injuries(1).each do |player|
  PlayerInjury.create({injury_overview: player.injury.injury_desc,
  	practice_status: player.injury.practice_status_desc,
  	game_status: player.injury.game_status_desc,
  	status_last_updated: player.injury.last_update}) 
end
 
		