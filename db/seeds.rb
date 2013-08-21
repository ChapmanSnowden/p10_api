
FFNerd.player_list.each do |player|
  FantasyPlayer.create({name: player.name,
    team_id: player.team,
    position: player.position,
    ffn_key: player.player_id}) 
end

 
