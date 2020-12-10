class StoreData < ActiveRecord::Migration[5.1]
  def change
    values = [{homeTeamName: 'Philadelphia 76ers', awayTeamName: 'Boston Celtics', gameWinnerId: 2, homeTeamScore: 94, awayTeamScore: 102, gameDate: '2020-08-21'},
      {homeTeamName: 'Philadelphia 76ers', awayTeamName: 'Boston Celtics', gameWinnerId: 2, homeTeamScore: 106, awayTeamScore: 110, gameDate: '2020-08-23'},
      {homeTeamName: 'Toronto Raptors', awayTeamName: 'Boston Celtics', gameWinnerId: 2, homeTeamScore: 94, awayTeamScore: 112, gameDate: '2020-08-30'},
      {homeTeamName: 'Toronto Raptors', awayTeamName: 'Boston Celtics', gameWinnerId: 2, homeTeamScore: 99, awayTeamScore: 102, gameDate: '2020-09-01'},
      {homeTeamName: 'Boston Celtics', awayTeamName: 'Toronto Raptors', gameWinnerId: 28, homeTeamScore: 103, awayTeamScore: 104, gameDate: '2020-09-03'},
      {homeTeamName: 'Boston Celtics', awayTeamName: 'Toronto Raptors', gameWinnerId: 28, homeTeamScore: 93, awayTeamScore: 100, gameDate: '2020-09-05'},
      {homeTeamName: 'Toronto Raptors', awayTeamName: 'Boston Celtics', gameWinnerId: 2, homeTeamScore: 89, awayTeamScore: 111, gameDate: '2020-09-07'},
      {homeTeamName: 'Boston Celtics', awayTeamName: 'Toronto Raptors', gameWinnerId: 28, homeTeamScore: 122, awayTeamScore: 125, gameDate: '2020-09-09'},
      {homeTeamName: 'Boston Celtics', awayTeamName: 'Toronto Raptors', gameWinnerId: 28, homeTeamScore: 122, awayTeamScore: 125, gameDate: '2020-09-09'},
      {homeTeamName: 'Boston Celtics', awayTeamName: 'Toronto Raptors', gameWinnerId: 28, homeTeamScore: 122, awayTeamScore: 125, gameDate: '2020-09-09'},
      {homeTeamName: 'Toronto Raptors', awayTeamName: 'Boston Celtics', gameWinnerId: 2, homeTeamScore: 87, awayTeamScore: 92, gameDate: '2020-09-12'},
      {homeTeamName: 'Toronto Raptors', awayTeamName: 'Boston Celtics', gameWinnerId: 2, homeTeamScore: 87, awayTeamScore: 92, gameDate: '2020-09-12'},
      {homeTeamName: 'Toronto Raptors', awayTeamName: 'Boston Celtics', gameWinnerId: 2, homeTeamScore: 87, awayTeamScore: 92, gameDate: '2020-09-12'},
      {homeTeamName: 'Boston Celtics', awayTeamName: 'Miami Heat', gameWinnerId: 16, homeTeamScore: 114, awayTeamScore: 117, gameDate: '2020-09-15'},
      {homeTeamName: 'Boston Celtics', awayTeamName: 'Miami Heat', gameWinnerId: 16, homeTeamScore: 101, awayTeamScore: 106, gameDate: '2020-09-17'},
      {homeTeamName: 'Miami Heat', awayTeamName: 'Boston Celtics', gameWinnerId: 2, homeTeamScore: 106, awayTeamScore: 117, gameDate: '2020-09-20'},
      {homeTeamName: 'Miami Heat', awayTeamName: 'Boston Celtics', gameWinnerId: 16, homeTeamScore: 112, awayTeamScore: 109, gameDate: '2020-09-24'},
      {homeTeamName: 'Boston Celtics', awayTeamName: 'Miami Heat', gameWinnerId: 2, homeTeamScore: 121, awayTeamScore: 108, gameDate: '2020-09-26'},
      {homeTeamName: 'Miami Heat', awayTeamName: 'Boston Celtics', gameWinnerId: 16, homeTeamScore: 125, awayTeamScore: 113, gameDate: '2020-09-27'},
      {homeTeamName: 'Brooklyn Nets', awayTeamName: 'Toronto Raptors', gameWinnerId: 28, homeTeamScore: 92, awayTeamScore: 117, gameDate: '2020-08-21'},
      {homeTeamName: 'Brooklyn Nets', awayTeamName: 'Toronto Raptors', gameWinnerId: 28, homeTeamScore: 122, awayTeamScore: 150, gameDate: '2020-08-23'},
      {homeTeamName: 'Dallas Mavericks', awayTeamName: 'LA Clippers', gameWinnerId: 13, homeTeamScore: 122, awayTeamScore: 130, gameDate: '2020-08-22'},
      {homeTeamName: 'Dallas Mavericks', awayTeamName: 'LA Clippers', gameWinnerId: 7, homeTeamScore: 135, awayTeamScore: 133, gameDate: '2020-08-23'},
      {homeTeamName: 'LA Clippers', awayTeamName: 'Dallas Mavericks', gameWinnerId: 13, homeTeamScore: 154, awayTeamScore: 111, gameDate: '2020-08-26'},
      {homeTeamName: 'Dallas Mavericks', awayTeamName: 'LA Clippers', gameWinnerId: 13, homeTeamScore: 97, awayTeamScore: 111, gameDate: '2020-08-30'},
      {homeTeamName: 'Utah Jazz', awayTeamName: 'Denver Nuggets', gameWinnerId: 29, homeTeamScore: 124, awayTeamScore: 87, gameDate: '2020-08-21'},
      {homeTeamName: 'Utah Jazz', awayTeamName: 'Denver Nuggets', gameWinnerId: 29, homeTeamScore: 129, awayTeamScore: 127, gameDate: '2020-08-24'},
      {homeTeamName: 'Denver Nuggets', awayTeamName: 'Utah Jazz', gameWinnerId: 8, homeTeamScore: 117, awayTeamScore: 107, gameDate: '2020-08-25'},
      {homeTeamName: 'Utah Jazz', awayTeamName: 'Denver Nuggets', gameWinnerId: 8, homeTeamScore: 107, awayTeamScore: 119, gameDate: '2020-08-31'},
      {homeTeamName: 'Denver Nuggets', awayTeamName: 'Utah Jazz', gameWinnerId: 8, homeTeamScore: 80, awayTeamScore: 78, gameDate: '2020-09-02'},
      {homeTeamName: 'LA Clippers', awayTeamName: 'Denver Nuggets', gameWinnerId: 13, homeTeamScore: 120, awayTeamScore: 97, gameDate: '2020-09-04'},
      {homeTeamName: 'LA Clippers', awayTeamName: 'Denver Nuggets', gameWinnerId: 8, homeTeamScore: 101, awayTeamScore: 110, gameDate: '2020-09-06'},
      {homeTeamName: 'Denver Nuggets', awayTeamName: 'LA Clippers', gameWinnerId: 13, homeTeamScore: 107, awayTeamScore: 113, gameDate: '2020-09-08'},
      {homeTeamName: 'Denver Nuggets', awayTeamName: 'LA Clippers', gameWinnerId: 13, homeTeamScore: 85, awayTeamScore: 96, gameDate: '2020-09-10'},
      {homeTeamName: 'Denver Nuggets', awayTeamName: 'LA Clippers', gameWinnerId: 13, homeTeamScore: 85, awayTeamScore: 96, gameDate: '2020-09-10'},
      {homeTeamName: 'Denver Nuggets', awayTeamName: 'LA Clippers', gameWinnerId: 13, homeTeamScore: 85, awayTeamScore: 96, gameDate: '2020-09-10'},
      {homeTeamName: 'LA Clippers', awayTeamName: 'Denver Nuggets', gameWinnerId: 8, homeTeamScore: 105, awayTeamScore: 111, gameDate: '2020-09-11'},
      {homeTeamName: 'LA Clippers', awayTeamName: 'Denver Nuggets', gameWinnerId: 8, homeTeamScore: 105, awayTeamScore: 111, gameDate: '2020-09-11'},
      {homeTeamName: 'LA Clippers', awayTeamName: 'Denver Nuggets', gameWinnerId: 8, homeTeamScore: 105, awayTeamScore: 111, gameDate: '2020-09-11'},
      {homeTeamName: 'Denver Nuggets', awayTeamName: 'LA Clippers', gameWinnerId: 8, homeTeamScore: 111, awayTeamScore: 98, gameDate: '2020-09-13'},
      {homeTeamName: 'LA Clippers', awayTeamName: 'Denver Nuggets', gameWinnerId: 8, homeTeamScore: 89, awayTeamScore: 104, gameDate: '2020-09-16'},
      {homeTeamName: 'Los Angeles Lakers', awayTeamName: 'Denver Nuggets', gameWinnerId: 14, homeTeamScore: 126, awayTeamScore: 114, gameDate: '2020-09-19'},
      {homeTeamName: 'Los Angeles Lakers', awayTeamName: 'Denver Nuggets', gameWinnerId: 14, homeTeamScore: 126, awayTeamScore: 114, gameDate: '2020-09-19'},
      {homeTeamName: 'Los Angeles Lakers', awayTeamName: 'Denver Nuggets', gameWinnerId: 14, homeTeamScore: 105, awayTeamScore: 103, gameDate: '2020-09-20'},
      {homeTeamName: 'Denver Nuggets', awayTeamName: 'Los Angeles Lakers', gameWinnerId: 8, homeTeamScore: 114, awayTeamScore: 106, gameDate: '2020-09-23'},
      {homeTeamName: 'Denver Nuggets', awayTeamName: 'Los Angeles Lakers', gameWinnerId: 8, homeTeamScore: 114, awayTeamScore: 106, gameDate: '2020-09-23'},
      {homeTeamName: 'Denver Nuggets', awayTeamName: 'Los Angeles Lakers', gameWinnerId: 14, homeTeamScore: 108, awayTeamScore: 114, gameDate: '2020-09-25'},
      {homeTeamName: 'Denver Nuggets', awayTeamName: 'Los Angeles Lakers', gameWinnerId: 14, homeTeamScore: 108, awayTeamScore: 114, gameDate: '2020-09-25'},
      {homeTeamName: 'Los Angeles Lakers', awayTeamName: 'Denver Nuggets', gameWinnerId: 14, homeTeamScore: 117, awayTeamScore: 107, gameDate: '2020-09-27'},
      {homeTeamName: 'Oklahoma City Thunder', awayTeamName: 'Houston Rockets', gameWinnerId: 21, homeTeamScore: 119, awayTeamScore: 107, gameDate: '2020-08-22'},
      {homeTeamName: 'Oklahoma City Thunder', awayTeamName: 'Houston Rockets', gameWinnerId: 21, homeTeamScore: 117, awayTeamScore: 114, gameDate: '2020-08-24'},
      {homeTeamName: 'Houston Rockets', awayTeamName: 'Oklahoma City Thunder', gameWinnerId: 11, homeTeamScore: 114, awayTeamScore: 80, gameDate: '2020-08-29'},
      {homeTeamName: 'Oklahoma City Thunder', awayTeamName: 'Houston Rockets', gameWinnerId: 21, homeTeamScore: 104, awayTeamScore: 100, gameDate: '2020-09-01'},
      {homeTeamName: 'Houston Rockets', awayTeamName: 'Oklahoma City Thunder', gameWinnerId: 11, homeTeamScore: 104, awayTeamScore: 102, gameDate: '2020-09-03'},
      {homeTeamName: 'Los Angeles Lakers', awayTeamName: 'Houston Rockets', gameWinnerId: 11, homeTeamScore: 97, awayTeamScore: 112, gameDate: '2020-09-05'},
      {homeTeamName: 'Los Angeles Lakers', awayTeamName: 'Houston Rockets', gameWinnerId: 14, homeTeamScore: 117, awayTeamScore: 109, gameDate: '2020-09-07'},
      {homeTeamName: 'Houston Rockets', awayTeamName: 'Los Angeles Lakers', gameWinnerId: 14, homeTeamScore: 102, awayTeamScore: 112, gameDate: '2020-09-09'},
      {homeTeamName: 'Houston Rockets', awayTeamName: 'Los Angeles Lakers', gameWinnerId: 14, homeTeamScore: 100, awayTeamScore: 110, gameDate: '2020-09-10'},
      {homeTeamName: 'Houston Rockets', awayTeamName: 'Los Angeles Lakers', gameWinnerId: 14, homeTeamScore: 100, awayTeamScore: 110, gameDate: '2020-09-10'},
      {homeTeamName: 'Los Angeles Lakers', awayTeamName: 'Houston Rockets', gameWinnerId: 14, homeTeamScore: 119, awayTeamScore: 96, gameDate: '2020-09-13'},
      {homeTeamName: 'Los Angeles Lakers', awayTeamName: 'Houston Rockets', gameWinnerId: 14, homeTeamScore: 119, awayTeamScore: 96, gameDate: '2020-09-13'},
      {homeTeamName: 'Los Angeles Lakers', awayTeamName: 'Houston Rockets', gameWinnerId: 14, homeTeamScore: 119, awayTeamScore: 96, gameDate: '2020-09-13'},
      {homeTeamName: 'Los Angeles Lakers', awayTeamName: 'Houston Rockets', gameWinnerId: 14, homeTeamScore: 119, awayTeamScore: 96, gameDate: '2020-09-13'},
      {homeTeamName: 'Miami Heat', awayTeamName: 'Indiana Pacers', gameWinnerId: 16, homeTeamScore: 124, awayTeamScore: 115, gameDate: '2020-08-22'},
      {homeTeamName: 'Miami Heat', awayTeamName: 'Indiana Pacers', gameWinnerId: 16, homeTeamScore: 99, awayTeamScore: 87, gameDate: '2020-08-24'},
      {homeTeamName: 'Dallas Mavericks', awayTeamName: 'LA Clippers', gameWinnerId: 13, homeTeamScore: 122, awayTeamScore: 130, gameDate: '2020-08-22'},
      {homeTeamName: 'Dallas Mavericks', awayTeamName: 'LA Clippers', gameWinnerId: 7, homeTeamScore: 135, awayTeamScore: 133, gameDate: '2020-08-23'},
      {homeTeamName: 'LA Clippers', awayTeamName: 'Dallas Mavericks', gameWinnerId: 13, homeTeamScore: 154, awayTeamScore: 111, gameDate: '2020-08-26'},
      {homeTeamName: 'Dallas Mavericks', awayTeamName: 'LA Clippers', gameWinnerId: 13, homeTeamScore: 97, awayTeamScore: 111, gameDate: '2020-08-30'},
      {homeTeamName: 'LA Clippers', awayTeamName: 'Denver Nuggets', gameWinnerId: 13, homeTeamScore: 120, awayTeamScore: 97, gameDate: '2020-09-04'},
      {homeTeamName: 'LA Clippers', awayTeamName: 'Denver Nuggets', gameWinnerId: 8, homeTeamScore: 101, awayTeamScore: 110, gameDate: '2020-09-06'},
      {homeTeamName: 'Denver Nuggets', awayTeamName: 'LA Clippers', gameWinnerId: 13, homeTeamScore: 107, awayTeamScore: 113, gameDate: '2020-09-08'},
      {homeTeamName: 'Denver Nuggets', awayTeamName: 'LA Clippers', gameWinnerId: 13, homeTeamScore: 85, awayTeamScore: 96, gameDate: '2020-09-10'},
      {homeTeamName: 'Denver Nuggets', awayTeamName: 'LA Clippers', gameWinnerId: 13, homeTeamScore: 85, awayTeamScore: 96, gameDate: '2020-09-10'},
      {homeTeamName: 'Denver Nuggets', awayTeamName: 'LA Clippers', gameWinnerId: 13, homeTeamScore: 85, awayTeamScore: 96, gameDate: '2020-09-10'},
      {homeTeamName: 'LA Clippers', awayTeamName: 'Denver Nuggets', gameWinnerId: 8, homeTeamScore: 105, awayTeamScore: 111, gameDate: '2020-09-11'},
      {homeTeamName: 'LA Clippers', awayTeamName: 'Denver Nuggets', gameWinnerId: 8, homeTeamScore: 105, awayTeamScore: 111, gameDate: '2020-09-11'},
      {homeTeamName: 'LA Clippers', awayTeamName: 'Denver Nuggets', gameWinnerId: 8, homeTeamScore: 105, awayTeamScore: 111, gameDate: '2020-09-11'},
      {homeTeamName: 'Denver Nuggets', awayTeamName: 'LA Clippers', gameWinnerId: 8, homeTeamScore: 111, awayTeamScore: 98, gameDate: '2020-09-13'},
      {homeTeamName: 'LA Clippers', awayTeamName: 'Denver Nuggets', gameWinnerId: 8, homeTeamScore: 89, awayTeamScore: 104, gameDate: '2020-09-16'},
      {homeTeamName: 'Los Angeles Lakers', awayTeamName: 'Portland Trail Blazers', gameWinnerId: 14, homeTeamScore: 111, awayTeamScore: 88, gameDate: '2020-08-21'},
      {homeTeamName: 'Portland Trail Blazers', awayTeamName: 'Los Angeles Lakers', gameWinnerId: 14, homeTeamScore: 108, awayTeamScore: 116, gameDate: '2020-08-23'},
      {homeTeamName: 'Portland Trail Blazers', awayTeamName: 'Los Angeles Lakers', gameWinnerId: 14, homeTeamScore: 115, awayTeamScore: 135, gameDate: '2020-08-25'},
      {homeTeamName: 'Los Angeles Lakers', awayTeamName: 'Portland Trail Blazers', gameWinnerId: 14, homeTeamScore: 131, awayTeamScore: 122, gameDate: '2020-08-30'},
      {homeTeamName: 'Los Angeles Lakers', awayTeamName: 'Houston Rockets', gameWinnerId: 11, homeTeamScore: 97, awayTeamScore: 112, gameDate: '2020-09-05'},
      {homeTeamName: 'Los Angeles Lakers', awayTeamName: 'Houston Rockets', gameWinnerId: 14, homeTeamScore: 117, awayTeamScore: 109, gameDate: '2020-09-07'},
      {homeTeamName: 'Houston Rockets', awayTeamName: 'Los Angeles Lakers', gameWinnerId: 14, homeTeamScore: 102, awayTeamScore: 112, gameDate: '2020-09-09'},
      {homeTeamName: 'Houston Rockets', awayTeamName: 'Los Angeles Lakers', gameWinnerId: 14, homeTeamScore: 100, awayTeamScore: 110, gameDate: '2020-09-10'},
      {homeTeamName: 'Houston Rockets', awayTeamName: 'Los Angeles Lakers', gameWinnerId: 14, homeTeamScore: 100, awayTeamScore: 110, gameDate: '2020-09-10'},
      {homeTeamName: 'Los Angeles Lakers', awayTeamName: 'Houston Rockets', gameWinnerId: 14, homeTeamScore: 119, awayTeamScore: 96, gameDate: '2020-09-13'},
      {homeTeamName: 'Los Angeles Lakers', awayTeamName: 'Houston Rockets', gameWinnerId: 14, homeTeamScore: 119, awayTeamScore: 96, gameDate: '2020-09-13'},
      {homeTeamName: 'Los Angeles Lakers', awayTeamName: 'Houston Rockets', gameWinnerId: 14, homeTeamScore: 119, awayTeamScore: 96, gameDate: '2020-09-13'},
      {homeTeamName: 'Los Angeles Lakers', awayTeamName: 'Houston Rockets', gameWinnerId: 14, homeTeamScore: 119, awayTeamScore: 96, gameDate: '2020-09-13'},
      {homeTeamName: 'Los Angeles Lakers', awayTeamName: 'Denver Nuggets', gameWinnerId: 14, homeTeamScore: 126, awayTeamScore: 114, gameDate: '2020-09-19'},
      {homeTeamName: 'Los Angeles Lakers', awayTeamName: 'Denver Nuggets', gameWinnerId: 14, homeTeamScore: 126, awayTeamScore: 114, gameDate: '2020-09-19'},
      {homeTeamName: 'Los Angeles Lakers', awayTeamName: 'Denver Nuggets', gameWinnerId: 14, homeTeamScore: 105, awayTeamScore: 103, gameDate: '2020-09-20'},
      {homeTeamName: 'Denver Nuggets', awayTeamName: 'Los Angeles Lakers', gameWinnerId: 8, homeTeamScore: 114, awayTeamScore: 106, gameDate: '2020-09-23'},
      {homeTeamName: 'Denver Nuggets', awayTeamName: 'Los Angeles Lakers', gameWinnerId: 8, homeTeamScore: 114, awayTeamScore: 106, gameDate: '2020-09-23'},
      {homeTeamName: 'Denver Nuggets', awayTeamName: 'Los Angeles Lakers', gameWinnerId: 14, homeTeamScore: 108, awayTeamScore: 114, gameDate: '2020-09-25'},
      {homeTeamName: 'Denver Nuggets', awayTeamName: 'Los Angeles Lakers', gameWinnerId: 14, homeTeamScore: 108, awayTeamScore: 114, gameDate: '2020-09-25'},
      {homeTeamName: 'Los Angeles Lakers', awayTeamName: 'Denver Nuggets', gameWinnerId: 14, homeTeamScore: 117, awayTeamScore: 107, gameDate: '2020-09-27'},
      {homeTeamName: 'Los Angeles Lakers', awayTeamName: 'Miami Heat', gameWinnerId: 14, homeTeamScore: 116, awayTeamScore: 98, gameDate: '2020-10-01'},
      {homeTeamName: 'Los Angeles Lakers', awayTeamName: 'Miami Heat', gameWinnerId: 14, homeTeamScore: 124, awayTeamScore: 114, gameDate: '2020-10-03'},
      {homeTeamName: 'Miami Heat', awayTeamName: 'Los Angeles Lakers', gameWinnerId: 16, homeTeamScore: 115, awayTeamScore: 104, gameDate: '2020-10-04'},
      {homeTeamName: 'Miami Heat', awayTeamName: 'Los Angeles Lakers', gameWinnerId: 14, homeTeamScore: 96, awayTeamScore: 102, gameDate: '2020-10-07'},
      {homeTeamName: 'Los Angeles Lakers', awayTeamName: 'Miami Heat', gameWinnerId: 16, homeTeamScore: 108, awayTeamScore: 111, gameDate: '2020-10-10'},
      {homeTeamName: 'Miami Heat', awayTeamName: 'Los Angeles Lakers', gameWinnerId: 14, homeTeamScore: 93, awayTeamScore: 106, gameDate: '2020-10-11'},
      {homeTeamName: 'Miami Heat', awayTeamName: 'Indiana Pacers', gameWinnerId: 16, homeTeamScore: 124, awayTeamScore: 115, gameDate: '2020-08-22'},
      {homeTeamName: 'Miami Heat', awayTeamName: 'Indiana Pacers', gameWinnerId: 16, homeTeamScore: 99, awayTeamScore: 87, gameDate: '2020-08-24'},
      {homeTeamName: 'Milwaukee Bucks', awayTeamName: 'Miami Heat', gameWinnerId: 16, homeTeamScore: 104, awayTeamScore: 115, gameDate: '2020-08-31'},
      {homeTeamName: 'Milwaukee Bucks', awayTeamName: 'Miami Heat', gameWinnerId: 16, homeTeamScore: 114, awayTeamScore: 116, gameDate: '2020-09-02'},
      {homeTeamName: 'Miami Heat', awayTeamName: 'Milwaukee Bucks', gameWinnerId: 16, homeTeamScore: 115, awayTeamScore: 100, gameDate: '2020-09-04'},
      {homeTeamName: 'Miami Heat', awayTeamName: 'Milwaukee Bucks', gameWinnerId: 17, homeTeamScore: 115, awayTeamScore: 118, gameDate: '2020-09-06'},
      {homeTeamName: 'Milwaukee Bucks', awayTeamName: 'Miami Heat', gameWinnerId: 16, homeTeamScore: 94, awayTeamScore: 103, gameDate: '2020-09-08'},
      {homeTeamName: 'Boston Celtics', awayTeamName: 'Miami Heat', gameWinnerId: 16, homeTeamScore: 114, awayTeamScore: 117, gameDate: '2020-09-15'},
      {homeTeamName: 'Boston Celtics', awayTeamName: 'Miami Heat', gameWinnerId: 16, homeTeamScore: 101, awayTeamScore: 106, gameDate: '2020-09-17'},
      {homeTeamName: 'Miami Heat', awayTeamName: 'Boston Celtics', gameWinnerId: 2, homeTeamScore: 106, awayTeamScore: 117, gameDate: '2020-09-20'},
      {homeTeamName: 'Miami Heat', awayTeamName: 'Boston Celtics', gameWinnerId: 16, homeTeamScore: 112, awayTeamScore: 109, gameDate: '2020-09-24'},
      {homeTeamName: 'Boston Celtics', awayTeamName: 'Miami Heat', gameWinnerId: 2, homeTeamScore: 121, awayTeamScore: 108, gameDate: '2020-09-26'},
      {homeTeamName: 'Miami Heat', awayTeamName: 'Boston Celtics', gameWinnerId: 16, homeTeamScore: 125, awayTeamScore: 113, gameDate: '2020-09-27'},
      {homeTeamName: 'Los Angeles Lakers', awayTeamName: 'Miami Heat', gameWinnerId: 14, homeTeamScore: 116, awayTeamScore: 98, gameDate: '2020-10-01'},
      {homeTeamName: 'Los Angeles Lakers', awayTeamName: 'Miami Heat', gameWinnerId: 14, homeTeamScore: 124, awayTeamScore: 114, gameDate: '2020-10-03'},
      {homeTeamName: 'Miami Heat', awayTeamName: 'Los Angeles Lakers', gameWinnerId: 16, homeTeamScore: 115, awayTeamScore: 104, gameDate: '2020-10-04'},
      {homeTeamName: 'Miami Heat', awayTeamName: 'Los Angeles Lakers', gameWinnerId: 14, homeTeamScore: 96, awayTeamScore: 102, gameDate: '2020-10-07'},
      {homeTeamName: 'Los Angeles Lakers', awayTeamName: 'Miami Heat', gameWinnerId: 16, homeTeamScore: 108, awayTeamScore: 111, gameDate: '2020-10-10'},
      {homeTeamName: 'Miami Heat', awayTeamName: 'Los Angeles Lakers', gameWinnerId: 14, homeTeamScore: 93, awayTeamScore: 106, gameDate: '2020-10-11'},
      {homeTeamName: 'Orlando Magic', awayTeamName: 'Milwaukee Bucks', gameWinnerId: 17, homeTeamScore: 107, awayTeamScore: 121, gameDate: '2020-08-22'},
      {homeTeamName: 'Orlando Magic', awayTeamName: 'Milwaukee Bucks', gameWinnerId: 17, homeTeamScore: 106, awayTeamScore: 121, gameDate: '2020-08-24'},
      {homeTeamName: 'Milwaukee Bucks', awayTeamName: 'Orlando Magic', gameWinnerId: 17, homeTeamScore: 118, awayTeamScore: 104, gameDate: '2020-08-29'},
      {homeTeamName: 'Milwaukee Bucks', awayTeamName: 'Miami Heat', gameWinnerId: 16, homeTeamScore: 104, awayTeamScore: 115, gameDate: '2020-08-31'},
      {homeTeamName: 'Milwaukee Bucks', awayTeamName: 'Miami Heat', gameWinnerId: 16, homeTeamScore: 114, awayTeamScore: 116, gameDate: '2020-09-02'},
      {homeTeamName: 'Miami Heat', awayTeamName: 'Milwaukee Bucks', gameWinnerId: 16, homeTeamScore: 115, awayTeamScore: 100, gameDate: '2020-09-04'},
      {homeTeamName: 'Miami Heat', awayTeamName: 'Milwaukee Bucks', gameWinnerId: 17, homeTeamScore: 115, awayTeamScore: 118, gameDate: '2020-09-06'},
      {homeTeamName: 'Milwaukee Bucks', awayTeamName: 'Miami Heat', gameWinnerId: 16, homeTeamScore: 94, awayTeamScore: 103, gameDate: '2020-09-08'},
      {homeTeamName: 'Oklahoma City Thunder', awayTeamName: 'Houston Rockets', gameWinnerId: 21, homeTeamScore: 119, awayTeamScore: 107, gameDate: '2020-08-22'},
      {homeTeamName: 'Oklahoma City Thunder', awayTeamName: 'Houston Rockets', gameWinnerId: 21, homeTeamScore: 117, awayTeamScore: 114, gameDate: '2020-08-24'},
      {homeTeamName: 'Houston Rockets', awayTeamName: 'Oklahoma City Thunder', gameWinnerId: 11, homeTeamScore: 114, awayTeamScore: 80, gameDate: '2020-08-29'},
      {homeTeamName: 'Oklahoma City Thunder', awayTeamName: 'Houston Rockets', gameWinnerId: 21, homeTeamScore: 104, awayTeamScore: 100, gameDate: '2020-09-01'},
      {homeTeamName: 'Houston Rockets', awayTeamName: 'Oklahoma City Thunder', gameWinnerId: 11, homeTeamScore: 104, awayTeamScore: 102, gameDate: '2020-09-03'},
      {homeTeamName: 'Orlando Magic', awayTeamName: 'Milwaukee Bucks', gameWinnerId: 17, homeTeamScore: 107, awayTeamScore: 121, gameDate: '2020-08-22'},
      {homeTeamName: 'Orlando Magic', awayTeamName: 'Milwaukee Bucks', gameWinnerId: 17, homeTeamScore: 106, awayTeamScore: 121, gameDate: '2020-08-24'},
      {homeTeamName: 'Milwaukee Bucks', awayTeamName: 'Orlando Magic', gameWinnerId: 17, homeTeamScore: 118, awayTeamScore: 104, gameDate: '2020-08-29'},
      {homeTeamName: 'Philadelphia 76ers', awayTeamName: 'Boston Celtics', gameWinnerId: 2, homeTeamScore: 94, awayTeamScore: 102, gameDate: '2020-08-21'},
      {homeTeamName: 'Philadelphia 76ers', awayTeamName: 'Boston Celtics', gameWinnerId: 2, homeTeamScore: 106, awayTeamScore: 110, gameDate: '2020-08-23'},
      {homeTeamName: 'Los Angeles Lakers', awayTeamName: 'Portland Trail Blazers', gameWinnerId: 14, homeTeamScore: 111, awayTeamScore: 88, gameDate: '2020-08-21'},
      {homeTeamName: 'Portland Trail Blazers', awayTeamName: 'Los Angeles Lakers', gameWinnerId: 14, homeTeamScore: 108, awayTeamScore: 116, gameDate: '2020-08-23'},
      {homeTeamName: 'Portland Trail Blazers', awayTeamName: 'Los Angeles Lakers', gameWinnerId: 14, homeTeamScore: 115, awayTeamScore: 135, gameDate: '2020-08-25'},
      {homeTeamName: 'Los Angeles Lakers', awayTeamName: 'Portland Trail Blazers', gameWinnerId: 14, homeTeamScore: 131, awayTeamScore: 122, gameDate: '2020-08-30'},
      {homeTeamName: 'Brooklyn Nets', awayTeamName: 'Toronto Raptors', gameWinnerId: 28, homeTeamScore: 92, awayTeamScore: 117, gameDate: '2020-08-21'},
      {homeTeamName: 'Brooklyn Nets', awayTeamName: 'Toronto Raptors', gameWinnerId: 28, homeTeamScore: 122, awayTeamScore: 150, gameDate: '2020-08-23'},
      {homeTeamName: 'Toronto Raptors', awayTeamName: 'Boston Celtics', gameWinnerId: 2, homeTeamScore: 94, awayTeamScore: 112, gameDate: '2020-08-30'},
      {homeTeamName: 'Toronto Raptors', awayTeamName: 'Boston Celtics', gameWinnerId: 2, homeTeamScore: 99, awayTeamScore: 102, gameDate: '2020-09-01'},
      {homeTeamName: 'Boston Celtics', awayTeamName: 'Toronto Raptors', gameWinnerId: 28, homeTeamScore: 103, awayTeamScore: 104, gameDate: '2020-09-03'},
      {homeTeamName: 'Boston Celtics', awayTeamName: 'Toronto Raptors', gameWinnerId: 28, homeTeamScore: 93, awayTeamScore: 100, gameDate: '2020-09-05'},
      {homeTeamName: 'Toronto Raptors', awayTeamName: 'Boston Celtics', gameWinnerId: 2, homeTeamScore: 89, awayTeamScore: 111, gameDate: '2020-09-07'},
      {homeTeamName: 'Boston Celtics', awayTeamName: 'Toronto Raptors', gameWinnerId: 28, homeTeamScore: 122, awayTeamScore: 125, gameDate: '2020-09-09'},
      {homeTeamName: 'Boston Celtics', awayTeamName: 'Toronto Raptors', gameWinnerId: 28, homeTeamScore: 122, awayTeamScore: 125, gameDate: '2020-09-09'},
      {homeTeamName: 'Boston Celtics', awayTeamName: 'Toronto Raptors', gameWinnerId: 28, homeTeamScore: 122, awayTeamScore: 125, gameDate: '2020-09-09'},
      {homeTeamName: 'Toronto Raptors', awayTeamName: 'Boston Celtics', gameWinnerId: 2, homeTeamScore: 87, awayTeamScore: 92, gameDate: '2020-09-12'},
      {homeTeamName: 'Toronto Raptors', awayTeamName: 'Boston Celtics', gameWinnerId: 2, homeTeamScore: 87, awayTeamScore: 92, gameDate: '2020-09-12'},
      {homeTeamName: 'Toronto Raptors', awayTeamName: 'Boston Celtics', gameWinnerId: 2, homeTeamScore: 87, awayTeamScore: 92, gameDate: '2020-09-12'},
      {homeTeamName: 'Utah Jazz', awayTeamName: 'Denver Nuggets', gameWinnerId: 29, homeTeamScore: 124, awayTeamScore: 87, gameDate: '2020-08-21'},
      {homeTeamName: 'Utah Jazz', awayTeamName: 'Denver Nuggets', gameWinnerId: 29, homeTeamScore: 129, awayTeamScore: 127, gameDate: '2020-08-24'},
      {homeTeamName: 'Denver Nuggets', awayTeamName: 'Utah Jazz', gameWinnerId: 8, homeTeamScore: 117, awayTeamScore: 107, gameDate: '2020-08-25'},
      {homeTeamName: 'Utah Jazz', awayTeamName: 'Denver Nuggets', gameWinnerId: 8, homeTeamScore: 107, awayTeamScore: 119, gameDate: '2020-08-31'},
      {homeTeamName: 'Denver Nuggets', awayTeamName: 'Utah Jazz', gameWinnerId: 8, homeTeamScore: 80, awayTeamScore: 78, gameDate: '2020-09-02'}]
      
  
    Game.import values, validate: true
  end
end
