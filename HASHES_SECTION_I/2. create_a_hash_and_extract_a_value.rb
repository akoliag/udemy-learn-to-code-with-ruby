nfl_roster = {"Tom Brady" => "New England Patriots",
              "Tony Romo" => "Dallas Cowboys",
               "Rob Gronkowski" => "New England Patriots"}

# players' names and surnames are the keys while group names are the values
# of these keys
nba_roster = {"Cleveland Cavaliers" => ["Lebron James", "Kevin Love"],
              "Golden State Warriors" => ["Stephen Curry", "Klay Thompson"]}
p nfl_roster
p nfl_roster["Tony Romo"]
# to extract we use square brackets in which we provide a key by which we get
# the value
p nfl_roster["Rob Gronkowski"]
p nfl_roster["Donald Duck"] # if we call a key which does not exist, we get nil
