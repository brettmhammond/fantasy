require 'nokogiri'
require 'open-uri'

Position.create([
    { position: 'QB' },
    { position: 'RB' },
    { position: 'WR' },
    { position: 'TE' },
    { position: 'C' },
    { position: 'G' },
    { position: 'T' },
    { position: 'DE' },
    { position: 'DT' },
    { position: 'NT' },
    { position: 'LB' },
    { position: 'S' },
    { position: 'CB' },
    { position: 'K' },
    { position: 'P' }
])

Team.create([
    {
        name: 'Buffalo Bills',
        short_name: 'Buf',
        division: 'AFC East',
        logo: 'http://static.foxsports.com/fe/images/NFL/TeamLogo/Large/2.png',
    },
    {
        name: 'Miami Dolphins',
        short_name: 'Mia',
        division: 'AFC East',
        logo: 'http://static.foxsports.com/fe/images/NFL/TeamLogo/Large/15.png',
    },
    {
        name: 'New England Patriots',
        short_name: 'NE',
        division: 'AFC East',
        logo: 'http://static.foxsports.com/fe/images/NFL/TeamLogo/Large/17.png',
    },
    {
        name: 'New York Jets',
        short_name: 'NYJ',
        division: 'AFC East',
        logo: 'http://static.foxsports.com/fe/images/NFL/TeamLogo/Large/20.png',
    },
    {
        name: 'Baltimore Ravens',
        short_name: 'Bal',
        division: 'AFC North',
        logo: 'http://static.foxsports.com/fe/images/NFL/TeamLogo/Large/33.png',
    },
    {
        name: 'Cincinnati Bengals',
        short_name: 'Cin',
        division: 'AFC North',
        logo: 'http://static.foxsports.com/fe/images/NFL/TeamLogo/Large/4.png',
    },
    {
        name: 'Cleveland Browns',
        short_name: 'Cle',
        division: 'AFC North',
        logo: 'http://static.foxsports.com/fe/images/NFL/TeamLogo/Large/5.png',
    },
    {
        name: 'Pittsburgh Steelers',
        short_name: 'Pit',
        division: 'AFC North',
        logo: 'http://static.foxsports.com/fe/images/NFL/TeamLogo/Large/23.png',
    },
    {
        name: 'Houston Texans',
        short_name: 'Hou',
        division: 'AFC South',
        logo: 'http://static.foxsports.com/fe/images/NFL/TeamLogo/Large/34.png',
    },
    {
        name: 'Indianapolis Colts',
        short_name: 'Ind',
        division: 'AFC South',
        logo: 'http://static.foxsports.com/fe/images/NFL/TeamLogo/Large/11.png',
    },
    {
        name: 'Jacksonville Jaguars',
        short_name: 'Jax',
        division: 'AFC South',
        logo: 'http://static.foxsports.com/fe/images/NFL/TeamLogo/Large/30.png',
    },
    {
        name: 'Tennessee Titans',
        short_name: 'Ten',
        division: 'AFC South',
        logo: 'http://static.foxsports.com/fe/images/NFL/TeamLogo/Large/10.png',
    },
    {
        name: 'Denver Broncos',
        short_name: 'Den',
        division: 'AFC West',
        logo: 'http://static.foxsports.com/fe/images/NFL/TeamLogo/Large/7.png',
    },
    {
        name: 'Kansas City Chiefs',
        short_name: 'Kan',
        division: 'AFC West',
        logo: 'http://static.foxsports.com/fe/images/NFL/TeamLogo/Large/12.png',
    },
    {
        name: 'Oakland Raiders',
        short_name: 'Oak',
        division: 'AFC West',
        logo: 'http://static.foxsports.com/fe/images/NFL/TeamLogo/Large/13.png',
    },
    {
        name: 'San Diego Chargers',
        short_name: 'San',
        division: 'AFC West',
        logo: 'http://static.foxsports.com/fe/images/NFL/TeamLogo/Large/24.png',
    },
    {
        name: 'Dallas Cowboys',
        short_name: 'Dal',
        division: 'NFC East',
        logo: 'http://static.foxsports.com/fe/images/NFL/TeamLogo/Large/6.png',
    },
    {
        name: 'New York Giants',
        short_name: 'NYG',
        division: 'NFC East',
        logo: 'http://static.foxsports.com/fe/images/NFL/TeamLogo/Large/19.png',
    },
    {
        name: 'Philadelphia Eagles',
        short_name: 'Phi',
        division: 'NFC East',
        logo: 'http://static.foxsports.com/fe/images/NFL/TeamLogo/Large/21.png',
    },
    {
        name: 'Washington Redskins',
        short_name: 'Was',
        division: 'NFC East',
        logo: 'http://static.foxsports.com/fe/images/NFL/TeamLogo/Large/28.png',
    },
    {
        name: 'Chicago Bears',
        short_name: 'Chi',
        division: 'NFC North',
        logo: 'http://static.foxsports.com/fe/images/NFL/TeamLogo/Large/3.png',
    },
    {
        name: 'Detroit Lions',
        short_name: 'Det',
        division: 'NFC North',
        logo: 'http://static.foxsports.com/fe/images/NFL/TeamLogo/Large/8.png',
    },
    {
        name: 'Green Bay Packers',
        short_name: 'Gre',
        division: 'NFC North',
        logo: 'http://static.foxsports.com/fe/images/NFL/TeamLogo/Large/9.png',
    },
    {
        name: 'Minnesota Vikings',
        short_name: 'Min',
        division: 'NFC North',
        logo: 'http://static.foxsports.com/fe/images/NFL/TeamLogo/Large/16.png',
    },
    {
        name: 'Atlanta Falcons',
        short_name: 'Atl',
        division: 'NFC South',
        logo: 'http://static.foxsports.com/fe/images/NFL/TeamLogo/Large/1.png',
    },
    {
        name: 'Carolina Panthers',
        short_name: 'Car',
        division: 'NFC South',
        logo: 'http://static.foxsports.com/fe/images/NFL/TeamLogo/Large/29.png',
    },
    {
        name: 'New Orleans Saints',
        short_name: 'Nos',
        division: 'NFC South',
        logo: 'http://static.foxsports.com/fe/images/NFL/TeamLogo/Large/18.png',
    },
    {
        name: 'Tampa Bay Buccaneers',
        short_name: 'Tam',
        division: 'NFC South',
        logo: 'http://static.foxsports.com/fe/images/NFL/TeamLogo/Large/27.png',
    },
    {
        name: 'Arizona Cardinals',
        short_name: 'Ari',
        division: 'NFC West',
        logo: 'http://static.foxsports.com/fe/images/NFL/TeamLogo/Large/22.png',
    },
    {
        name: 'San Francisco 49ers',
        short_name: 'San',
        division: 'NFC West',
        logo: 'http://static.foxsports.com/fe/images/NFL/TeamLogo/Large/25.png',
    },
    {
        name: 'Seattle Seahawks',
        short_name: 'Sea',
        division: 'NFC West',
        logo: 'http://static.foxsports.com/fe/images/NFL/TeamLogo/Large/26.png',
    },
    {
        name: 'St. Louis Rams',
        short_name: 'Stl',
        division: 'NFC West',
        logo: 'http://static.foxsports.com/fe/images/NFL/TeamLogo/Large/14.png',
    }
])


('A'..'W').each do |letter|

    doc = Nokogiri::HTML(open("http://sports.yahoo.com/nfl/players?type=lastname&query=#{letter}"))

    rows = doc.xpath("//tr[@class='ysprow1']")

    rows.each do |row|
        position = Position.find_by_position(row.css('td')[1].text)
        team     = Team.find_by_name(row.css('td')[2].text)

        Player.create(name: row.css('td')[0].text, position_id: position.id, team_id: team.id)
    end

    rows = doc.xpath("//tr[@class='ysprow2']")

    rows.each do |row|
        position = Position.find_by_position(row.css('td')[1].text)
        team     = Team.find_by_name(row.css('td')[2].text)

        Player.create(name: row.css('td')[0].text, position_id: position.id, team_id: team.id)
    end

end

