# Part 4: SQL
Record your queries and any resulting output below.

## Release 0:  Query the Database
1.  What are all the player names?
    
    Query: 
  
    ```sql
    < SELECT name FROM players; >
    ```
    
    Result:
  
    ```sql
    < Abby Wambach
    Dez Bryant
    Hope Solo
    Jonathan Toews
    Julie Johnston
    Kerri Walsh
    Kyrie Irving
    Lebron James
    Misty May-Treanor
    Patrick Kane
    Shannon Boxx
    Tony Romo > 
    ```
  
2.  Which team names include the word "Chicago"?
    
    Query:
  
    ```sql
    < SELECT name FROM teams WHERE name LIKE '%Chicago%'; >
    ```
    
    Result:
  
    ```sql
    < Chicago Blackhawks
    Chicago Red Stars
    sqlite> 
 > 
    ```
  
3.  What are the titles of the positions on the team named "Chicago Blackhawks"?
    
    Query:
  
    ```sql
    < SELECT positions.title FROM positions JOIN teams ON teams.id = positions.team_id
    WHERE teams.name = "Chicago Blackhawks"; >
    ```
    
    Result:
  
    ```sql
    < Right Wing
    Center > 
    ```
  
4.  What are the names of the teams Shannon Boxx plays for?
    
    Query:
  
    ```sql
    < SELECT teams.name FROM teams JOIN positions ON teams.id = positions.team_id JOIN players ON positions.player_id = players.id
    WHERE players.name = "Shannon Boxx"; 
    >
    ```
    
    Result:
  
    ```sql
    < United States National Soccer
    Chicago Red Stars > 
    ```
  
5.  What are the names of the players who play soccer? (Each name should be listed once; no repeats.)
    
    Query:
  
    ```sql
    < SELECT DISTINCT players.name FROM players JOIN positions ON players.id = positions.player_id JOIN teams ON positions.team_id = teams.id WHERE teams.sport = "Soccer"; >
    ```
    
    Result:
  
    ```sql
    < Shannon Boxx
    Hope Solo
    Abby Wambach
    Julie Johnston > 
    ```
  
6.  What is the name of the team with the most players, and how many players does it have?
    
    Query:
  
    ```sql
    < SELECT teams.name, COUNT(players.id) FROM teams JOIN positions ON teams.id = positions.team_id JOIN players ON positions.player_id = players.id ORDER BY COUNT(players.id) DESC; >
    ```
    
    Result:
  
    ```sql
    < Chicago Red Stars|14 > 
    ```
  

### Release 1: Modify the Database  
1.  The Chicago Blackhawks, one of the teams in the database, signed a player to play "Center" and wear jersey number 99.  The player's name is "Kevin Solorio".  Update the database to reflect this.
  
    Statements run:
  
    ```sql
    < your SQL statements here >
    ```

2.  The team named "Oakland Raiders" is moving to a new city.  It's new name is "Las Vegas Raiders".  Update the database to reflect this.
  
    Statements run:
  
    ```sql
    < your SQL statements here >
    ```

3.  The player named "Tony Romo" has retired.  Remove this player and their positions from the database.
  
    Statements run:
  
    ```sql
    < your SQL statements here >
    ```
