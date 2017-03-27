#When we have multiple conditions we can group them using parenthesies and
#thanks to that Ruby will know how to process

def authenticate_agent(rank, name, credentials)
  if (rank == "007" && name == "James Bond") || credentials == "Secret Agent"
    puts "Access granted, please proceed to Intelligence department!"
  else
    puts "Access denied #{name}"
  end
  end
# when calling the method we don't need to write p/puts as the final statement
#in the method is puts
authenticate_agent("007", "James Bond", "Spy")
