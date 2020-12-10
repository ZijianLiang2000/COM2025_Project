<<<<<<< HEAD
import requests
import datetime
import csv

homeTeamNameArray = []
awayTeamNameArray = []
gameWinnerIdArray = []
homeTeamScoreArray = []
awayTeamScoreArray = []
gameDateArray = []
gamesArray = []
IDdict = {}

# key is RapidAPI Team ID, value is Database Team ID
IDdict = {
    1: 1, 2: 2, 4: 3, 5: 4, 6: 5, 7: 6, 8: 7, 9: 8, 10: 9, 11: 10, 14: 11, 15: 12, 16: 13, 17: 14, 19: 15, 20: 16,
    21: 17, 22: 18, 23: 19, 24: 20, 25: 21, 26: 22, 27: 23, 28: 24, 29: 25, 30: 26, 31: 27, 38: 28, 40: 29, 41: 30
}


def gamesMethod(homeTeamName, awayTeamName, gameWinnerId, homeTeamScore, awayTeamScore, gameDate):
    # print("{homeTeamName: " + str(homeTeamName) + ", awayTeamName: " + str(awayTeamName) + ", gameWinnerId: " + str(
    #     gameWinnerId) + ", homeTeamScore: ",
    #       str(homeTeamScore) + ", awayTeamScore: " + str(awayTeamScore) + ", gameDate: '" + str(gameDate) + "'},")
    return "{homeTeamName: '" + str(homeTeamName) + "', awayTeamName: '" + str(awayTeamName) + "', gameWinnerId: " + str(
        gameWinnerId) + ", homeTeamScore: " + str(homeTeamScore) + ", awayTeamScore: " + str(
        awayTeamScore) + ", gameDate: '" + str(gameDate) + "'},"


def RapidAPI():
    NBATeamIdArray = [1, 2, 4, 5, 6, 7, 8, 9, 10, 11, 14, 15, 16, 17, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
                      31, 38, 40, 41]
    for everyTeamIndex in NBATeamIdArray:
        url = "https://api-nba-v1.p.rapidapi.com/games/teamId/" + str(everyTeamIndex)

        headers = {
            'x-rapidapi-key': "81f17623camshd2b99a09f5ec7b9p1cf6aejsn282365a0a05e",
            'x-rapidapi-host': "api-nba-v1.p.rapidapi.com"
        }

        response = requests.request("GET", url, headers=headers)

        jsonResponse = response.json()
        games = jsonResponse["api"]["games"]
        # print(jsonResponse["api"]["games"])
        count = 0
        gameIdRecord = ""
        for everyYear in games:
            # Due to large amount of data inconvenient to store inside database, cut the amount into games after January first of 2020
            # Want more games available? just change the datetime.datetime(...) in line 47 into any date range you would like.
            dateSplitArr = (str(everyYear['startTimeUTC'])[0:10].split("-"))
            date = datetime.datetime(int(dateSplitArr[0]), int(dateSplitArr[1]), int(dateSplitArr[2]))
            if everyYear['seasonYear'] == "2019" and everyYear['league'] == "standard" and everyYear[
                'statusGame'] == "Finished" and date > datetime.datetime(2020, 8, 1):
                # if every game has no redundancy
                if everyYear['gameId'] != gameIdRecord:
                    count += 1
                    awayTeam = everyYear['vTeam']
                    homeTeam = everyYear['hTeam']

                    homeTeamScore = int(homeTeam['score']['points'])
                    awayTeamScore = int(awayTeam['score']['points'])
                    gameDate = str(everyYear['startTimeUTC'])[0:10]
                    gameDateArray.append(gameDate)
                    # print("JSON for season " + str(everyYear['seasonYear']) + " - " + str(int(everyYear['seasonYear']) + 1) + ": " + str(everyYear))
                    if awayTeamScore > homeTeamScore:
                        gameWinnerId = awayTeam['teamId']
                        gameWinnerIdArray.append(int(gameWinnerId))
                        # print("Game winner ID:", str(gameWinnerId))
                    else:
                        gameWinnerId = homeTeam['teamId']
                        gameWinnerIdArray.append(int(gameWinnerId))
                        # print("Game winner ID:", str(gameWinnerId))
                    # print("Date:", gameDate)
                    # print("Away Team Name: " + str(awayTeam['fullName']))
                    # print("Home Team Name: " + str(homeTeam['fullName']))
                    homeTeamNameArray.append(str(homeTeam['fullName']))
                    awayTeamNameArray.append(str(awayTeam['fullName']))
                    # print(str(awayTeam['fullName']),"Score:", awayTeamScore)
                    # print(str(homeTeam['fullName']), "Score:", homeTeamScore,"\n")
                    homeTeamScoreArray.append(int(homeTeamScore))
                    awayTeamScoreArray.append(int(awayTeamScore))
                    gameIdRecord = everyYear['gameId']
        # print("Total Game Count: " + str(count) + "\n")

        # print(len(homeTeamScoreArray), len(awayTeamNameArray), len(homeTeamNameArray), len(awayTeamNameArray), len(gameWinnerIdArray),len(gameDateArray))

    for index in range(len(homeTeamScoreArray)):
        homeTeamNameValue = homeTeamNameArray[index]
        awayTeamNameValue = awayTeamNameArray[index]
        gameWinnerValue = IDdict.get(gameWinnerIdArray[index])
        homeTeamScoreValue = homeTeamScoreArray[index]
        awayTeamScoreValue = awayTeamScoreArray[index]
        gameDateValue = gameDateArray[index]
        # print("Rapid Team ID:",gameWinnerIdArray[index],", DB Team ID:", gameWinnerValue)
        gamesArray.append(
            gamesMethod(str(homeTeamNameValue), str(awayTeamNameValue), int(gameWinnerValue), int(homeTeamScoreValue),
                        int(awayTeamScoreValue), str(gameDateValue)))

    with open('./game_file.csv', mode='w',newline='') as game_file:
        game_writer = csv.writer(game_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
        for line in range(len(gamesArray)):
            game_writer.writerow([gamesArray[line]])
            # print(str([gamesArray[line]]).replace('"',""))


#     Stats needed:
#   homeTeamName, awayTeamName, gameWinnerId, homeTeamScore, awayTeamScore, gameDate
#   Export from JSON data, for each team 2020 season


RapidAPI()
=======
import requests
import datetime

homeTeamNameArray = []
awayTeamNameArray = []
gameWinnerIdArray = []
homeTeamScoreArray = []
awayTeamScoreArray = []
gameDateArray = []
gamesArray = []
IDdict = {}

# key is RapidAPI Team ID, value is Database Team ID
IDdict = {
1:1,2:2,4:3,5:4,6:5,7:6,8:7,9:8,10:9,11:10,14:11,15:12,16:13,17:14,19:15,20:16,21:17,22:18,23:19,24:20,25:21,26:22,27:23,28:24,29:25,30:26,31:27,38:28,40:29,41:30
}

def gamesMethod(homeTeamName, awayTeamName, gameWinnerId, homeTeamScore, awayTeamScore, gameDate):

    print("Game.create(homeTeamName: '"+ str(homeTeamName)+ "', awayTeamName: '"+ str(awayTeamName) + "', gameWinnerId: "+ str(gameWinnerId) + ", homeTeamScore: ",str(homeTeamScore) + ", awayTeamScore: "+ str(awayTeamScore) + ", gameDate: '"+ str(gameDate) + "')")
    return "Game.create(homeTeamName: '"+ str(homeTeamName)+ "', awayTeamName: '"+ str(awayTeamName) + "', gameWinnerId: "+ str(gameWinnerId) + ", homeTeamScore: ",str(homeTeamScore) + ", awayTeamScore: "+ str(awayTeamScore) + ", gameDate: '"+ str(gameDate) + "')"



def RapidAPI():
    NBATeamIdArray = [1,2,4,5,6,7,8,9,10,11,14,15,16,17,19,20,21,22,23,24,25,26,27,28,29,30,31,38,40,41]
    for everyTeamIndex in NBATeamIdArray:
        url = "https://api-nba-v1.p.rapidapi.com/games/teamId/"+str(everyTeamIndex)

        headers = {
            'x-rapidapi-key': "81f17623camshd2b99a09f5ec7b9p1cf6aejsn282365a0a05e",
            'x-rapidapi-host': "api-nba-v1.p.rapidapi.com"
        }

        response = requests.request("GET", url, headers=headers)

        jsonResponse = response.json()
        games = jsonResponse["api"]["games"]
        # print(jsonResponse["api"]["games"])
        count = 0
        gameIdRecord = ""
        for everyYear in games:
            # Due to large amount of data inconvenient to store inside database, cut the amount into games after January first of 2020
            dateSplitArr = (str(everyYear['startTimeUTC'])[0:10].split("-"))
            date = datetime.datetime(int(dateSplitArr[0]),int(dateSplitArr[1]),int(dateSplitArr[2]))
            if everyYear['seasonYear'] == "2019" and everyYear['league']=="standard" and everyYear['statusGame'] == "Finished" and date > datetime.datetime(2020,1,1):
                # if every game has no redundancy
                if everyYear['gameId'] != gameIdRecord:
                    count += 1
                    awayTeam = everyYear['vTeam']
                    homeTeam = everyYear['hTeam']

                    homeTeamScore = int(homeTeam['score']['points'])
                    awayTeamScore = int(awayTeam['score']['points'])
                    gameDate = str(everyYear['startTimeUTC'])[0:10]
                    gameDateArray.append(gameDate)
                    # print("JSON for season " + str(everyYear['seasonYear']) + " - " + str(int(everyYear['seasonYear']) + 1) + ": " + str(everyYear))
                    if awayTeamScore > homeTeamScore:
                        gameWinnerId = awayTeam['teamId']
                        gameWinnerIdArray.append(int(gameWinnerId))
                        # print("Game winner ID:", str(gameWinnerId))
                    else:
                        gameWinnerId = homeTeam['teamId']
                        gameWinnerIdArray.append(int(gameWinnerId))
                        # print("Game winner ID:", str(gameWinnerId))
                    # print("Date:", gameDate)
                    # print("Away Team Name: " + str(awayTeam['fullName']))
                    # print("Home Team Name: " + str(homeTeam['fullName']))
                    homeTeamNameArray.append(str(homeTeam['fullName']))
                    awayTeamNameArray.append(str(awayTeam['fullName']))
                    # print(str(awayTeam['fullName']),"Score:", awayTeamScore)
                    # print(str(homeTeam['fullName']), "Score:", homeTeamScore,"\n")
                    homeTeamScoreArray.append(int(homeTeamScore))
                    awayTeamScoreArray.append(int(awayTeamScore))
                    gameIdRecord = everyYear['gameId']
        # print("Total Game Count: " + str(count) + "\n")

        # print(len(homeTeamScoreArray), len(awayTeamNameArray), len(homeTeamNameArray), len(awayTeamNameArray), len(gameWinnerIdArray),len(gameDateArray))

    for index in range(len(homeTeamScoreArray)):


        homeTeamNameValue = homeTeamNameArray[index]
        awayTeamNameValue = awayTeamNameArray[index]
        gameWinnerValue = IDdict.get(gameWinnerIdArray[index])
        homeTeamScoreValue = homeTeamScoreArray[index]
        awayTeamScoreValue = awayTeamScoreArray[index]
        gameDateValue = gameDateArray[index]
        # print("Rapid Team ID:",gameWinnerIdArray[index],", DB Team ID:", gameWinnerValue)
        gamesArray.append(gamesMethod(str(homeTeamNameValue),str(awayTeamNameValue),int(gameWinnerValue),int(homeTeamScoreValue),int(awayTeamScoreValue),str(gameDateValue)))




#     Stats needed:
#   homeTeamName, awayTeamName, gameWinnerId, homeTeamScore, awayTeamScore, gameDate
#   Export from JSON data, for each team 2020 season




RapidAPI()
# print(len(gamesArray))

# games(homeTeamName, awayTeamName, gameWinnerId, homeTeamScore, awayTeamScore, gameDate)
>>>>>>> 71697f0fe16e019ecb0b95696c03044b2e99786c
