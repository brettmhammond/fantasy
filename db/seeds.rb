Position.create([
    { position: 'QB' },
    { position: 'RB' },
    { position: 'WR' },
    { position: 'TE' },
    { position: 'K' },
    { position: 'DEF' },
])

Team.create([
    {
        city: 'Arizona',
        name: 'Cardinals',
        key: 'ARI',
        conference: 'NFC',
        division: 'West',
    },
    {
        city: 'Atlanta',
        name: 'Falcons',
        key: 'ATL',
        conference: 'NFC',
        division: 'South',
    },
    {
        city: 'Baltimore',
        name: 'Ravens',
        key: 'BAL',
        conference: 'AFC',
        division: 'North',
    },
    {
        city: 'Buffalo',
        name: 'Bills',
        key: 'BUF',
        conference: 'AFC',
        division: 'East',
    },
    {
        city: 'Carolina',
        name: 'Panthers',
        key: 'CAR',
        conference: 'NFC',
        division: 'South',
    },
    {
        city: 'Chicago',
        name: 'Bears',
        key: 'CHI',
        conference: 'NFC',
        division: 'North',
    },
    {
        city: 'Cincinnati',
        name: 'Bengals',
        key: 'CIN',
        conference: 'AFC',
        division: 'North',
    },
    {
        city: 'Cleveland',
        name: 'Browns',
        key: 'CLE',
        conference: 'AFC',
        division: 'North',
    },
    {
        city: 'Dallas',
        name: 'Cowboys',
        key: 'DAL',
        conference: 'NFC',
        division: 'East',
    },
    {
        city: 'Denver',
        name: 'Broncos',
        key: 'DEN',
        conference: 'AFC',
        division: 'West',
    },
    {
        city: 'Detroit',
        name: 'Lions',
        key: 'DET',
        conference: 'NFC',
        division: 'North',
    },
    {
        city: 'Green Bay',
        name: 'Packers',
        key: 'GB',
        conference: 'NFC',
        division: 'North',
    },
    {
        city: 'Houston',
        name: 'Texans',
        key: 'HOU',
        conference: 'AFC',
        division: 'South',
    },
    {
        city: 'Indianapolis',
        name: 'Colts',
        key: 'IND',
        conference: 'AFC',
        division: 'South',
    },
    {
        city: 'Jacksonville',
        name: 'Jaguars',
        key: 'JAC',
        conference: 'AFC',
        division: 'South',
    },
    {
        city: 'Kansas City',
        name: 'Chiefs',
        key: 'KC',
        conference: 'AFC',
        division: 'West',
    },
    {
        city: 'Miami',
        name: 'Dolphins',
        key: 'MIA',
        conference: 'AFC',
        division: 'East',
    },
    {
        city: 'Minnesota',
        name: 'Vikings',
        key: 'MIN',
        conference: 'NFC',
        division: 'North',
    },
    {
        city: 'New England',
        name: 'Patriots',
        key: 'NE',
        conference: 'AFC',
        division: 'East',
    },
    {
        city: 'New Orleans',
        name: 'Saints',
        key: 'NO',
        conference: 'NFC',
        division: 'South',
    },
    {
        city: 'New York',
        name: 'Giants',
        key: 'NYG',
        conference: 'NFC',
        division: 'East',
    },
    {
        city: 'New York',
        name: 'Jets',
        key: 'NYJ',
        conference: 'AFC',
        division: 'East',
    },
    {
        city: 'Oakland',
        name: 'Raiders',
        key: 'OAK',
        conference: 'AFC',
        division: 'West',
    },
    {
        city: 'Philadelphia',
        name: 'Eagles',
        key: 'PHI',
        conference: 'NFC',
        division: 'East',
    },
    {
        city: 'Pittsburgh',
        name: 'Steelers',
        key: 'PIT',
        conference: 'AFC',
        division: 'North',
    },
    {
        city: 'San Diego',
        name: 'Chargers',
        key: 'SD',
        conference: 'AFC',
        division: 'West',
    },
    {
        city: 'San Francisco',
        name: '49ers',
        key: 'SF',
        conference: 'NFC',
        division: 'West',
    },
    {
        city: 'Seattle',
        name: 'Seahawks',
        key: 'SEA',
        conference: 'NFC',
        division: 'West',
    },
    {
        city: 'St. Louis',
        name: 'Rams',
        key: 'STL',
        conference: 'NFC',
        division: 'West',
    },
    {
        city: 'Tampa Bay',
        name: 'Buccaneers',
        key: 'TB',
        conference: 'NFC',
        division: 'South',
    },
    {
        city: 'Tennessee',
        name: 'Titans',
        key: 'TEN',
        conference: 'AFC',
        division: 'South',
    },
    {
        city: 'Washington',
        name: 'Redskins',
        key: 'WAS',
        conference: 'NFC',
        division: 'East',
    }
])

# Get the Game Schedules
schedules = FantasyFootballNerd.schedule
schedules.each do |schedule|

    # gameId: '255'
    # gameWeek: '17'
    # gameDate: '2014-12-28'
    # awayTeam: ARI
    # homeTeam: SF
    # gameTimeET: 4:25 PM
    # tvStation: FOX

    away_team = Team.find_by_key(schedule['awayTeam'])
    home_team = Team.find_by_key(schedule['homeTeam'])

    Schedule.create(
        ffn_game_id: schedule['gameId'],
        year: 2014,
        week: schedule['gameWeek'],
        date: schedule['gameDate'],
        time: "#{schedule['gameTimeET']} ET",
        broadcaster: schedule['tvStation'],
        away_team_id: away_team.id,
        home_team_id: home_team.id
    )

end

# Get the Team Byes
byes = FantasyFootballNerd.byes
byes.each do |bye, bye_weeks|
  bye_weeks.each do |bye_week|

    # team: CAR
    # byeWeek: '12'
    # displayName: Carolina Panthers

    team = Team.find_by_key(bye_week['team'])

    Bye.create(
        team_id: team.id,
        year: 2014,
        week: bye_week['byeWeek']
    )
  end
end






# Get all Players
players = FantasyFootballNerd.players
players.each do |player|

    #   playerId: '2684'
    #   active: '1'
    #   jersey: '0'
    #   lname: Murray
    #   fname: Patrick
    #   team: TB
    #   position: K
    #   height: 5-7
    #   weight: '182'
    #   dob: 0000-00-00
    #   college: Fordham

    position = Position.find_by_position(player['position'])
    team     = Team.find_by_key(player['team'])

    Player.create(
        first_name: player['fname'],
        last_name: player['lname'],
        name: "#{player['fname']} #{player['lname']}",
        ffn_player_id: player['playerId'],
        active: player['active'],
        jersey: player['jersey'],
        height: player['height'],
        weight: player['weight'],
        dob: player['dob'],
        college: player['college'],
        position_id: position.id,
        team_id: team.id
    )

end

# Draft rankings
draft_rankings = FantasyFootballNerd.draft_rankings
draft_rankings.each do |draft_ranking|

    # "playerId": "145",
    # "nerdRank": "1.249",
    # "positionRank": "1",
    # "overallRank": "1"

  player = Player.find_by_ffn_player_id(draft_ranking['playerId'])

  if player
    DraftRanking.create(
        player_id: player.id,
        year: 2014,
        ffn_rank: draft_ranking['nerdRank'],
        position_rank: draft_ranking['positionRank'],
        overall_rank: draft_ranking['overallRank'],
    )
  else
     puts draft_ranking['playerId']
  end

end

# Draft Projections
positions = Position.all
positions.each do |position|
  draft_projections = FantasyFootballNerd.draft_projections(position.position)
  draft_projections.each do |draft_projection|

    # playerId: '1393'
    # completions: '1'
    # attempts: '0'
    # passingYards: '14'
    # passingTD: '0'
    # passingInt: '0'
    # rushYards: '0'
    # rushTD: '0'
    # fantasyPoints: '-2'

    player = Player.find_by_ffn_player_id(draft_projection['playerId'])

    if player
      DraftProjection.create(
          player_id: player.id,
          year: 2014,
          completions: draft_projection['completions'],
          attempts: draft_projection['attempts'],
          passing_yards: draft_projection['passingYards'],
          passing_td: draft_projection['passingTD'],
          passing_int: draft_projection['passingInt'],
          rush_yards: draft_projection['rushYards'],
          rush_td: draft_projection['rushTD'],
          fantasy_points: draft_projection['fantasyPoints']
      )
    else
       puts draft_projection['playerId']
    end

  end
end

# Get the Auction Values
auction_values = FantasyFootballNerd.auction
auction_values.each do |auction_value|
  # playerId: '2192'
  # minPrice: '2'
  # maxPrice: '2'
  # avgPrice: '2'

  player = Player.find_by_ffn_player_id(auction_value['playerId'])

  if player
    AuctionValue.create(
        player_id: player.id,
        year: 2014,
        min_price: auction_value['minPrice'].to_i,
        max_price: auction_value['maxPrice'].to_i,
        avg_price: auction_value['avgPrice'].to_i,
    )
  else
     puts auction_value['playerId']
  end
end








