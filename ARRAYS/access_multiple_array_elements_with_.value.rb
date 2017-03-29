#Pulling out not sequential values but values scattered all over the array
channels = ["NBC", "CBN", "UPN", "FOX", "BBC", "BBC1"]
p channels.values_at(0, 3, 5)
p channels.values_at(1, -1) #pulls out index position no.1 and the last item
p channels.values_at(1, 1, 3, 3) #we may extract also duplicated values
p channels.values_at(1, 5, 3, 8)#if we want to pull out the item with the
#index position which doesn't exist in the array, we will get nil
