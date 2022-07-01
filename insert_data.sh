#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

declare -A teams

cat games.csv | while IFS="," read year round winner opponent winner_goals opponent_goals 
do
	if [ "$winner" != "winner" ]
	then	
		echo $opponent,$winner
		W_ID=$($PSQL "SELECT team_id from teams where name='$winner'")
		# IF winning team is not already present in teams table
		if [ -z $W_ID ]
		then
	        	echo "winning team not found in teams table, inserting new record"	
			INSERT_TEAMS=$($PSQL "INSERT INTO teams(name) VALUES('$winner')")
			if [[ $INSERT_TEAM == "INSERT 0 1" ]]
		        then
		        	echo insert into team, $opponent
			fi
		fi	

		# IF opponent team is not present in teams table already
		O_ID=$($PSQL "SELECT team_id from teams where name='$opponent'")
		if [ -z $O_ID ]
		then
			echo "opponent team is not found in teams table, inserting new record"	
			INSERT_TEAMS1=$($PSQL "INSERT INTO teams(name) VALUES('$opponent')")
				if [[ $INSERT_TEAMS1 == "INSERT 0 1" ]]
				then
					echo insert into team, $winner	
				fi	
		fi
		echo $winner
		WINNER_ID=$($PSQL "select team_id from teams where name='$winner'")
		echo $WINNER_ID
		echo $opponent
		OPPONENT_ID=$($PSQL "select team_id from teams where name='$opponent'")
		echo $OPPONENT_ID
		INSERT_GAMES=$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES($year,'$round',$WINNER_ID,$OPPONENT_ID,$winner_goals,$opponent_goals)")
		if [[ $INSERT_GAMES == "INSERT 0 1" ]]
		then
			echo inserted into games 
		fi	
	fi

done

for i in "${!teams[@]}"
do 
	echo $i
done

