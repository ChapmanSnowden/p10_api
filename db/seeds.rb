

FFNerd.player_list.each do |player|
  FantasyPlayer.create({name: player.name,
    team_id: player.team,
    position: player.position,
    ffn_id: player.player_id}) 
end

FFNerd.injuries(week).each do |player|
  PlayerInjury.create({injury_overview: player.injury.injury_desc,
  	practice_status: player.injury.practice_status_desc,
  	game_status: player.injury.game_status_desc,
  	status_last_updated: player.injury.last_update}) 
end
 
FFNerd.projections(week).each do |player|
	PlayerStat.create({player_rank_by_pos: player.rank,
  	current_week: player.projection.week,
  	projected_stats_standard: player.projection.standard,
  	projected_stats_low: player.projection.standard_low,
  	projected_stats_high: player.projection.standard_high})
end


