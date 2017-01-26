array = [1,12,144,1728,20736,248832,2985984,35831808]
multiplication = array.inject(1) do | product, n | product * n end


movies = [["Alfonso Cuaron", "Gravity"], ["Spike Jonze", "Her"], ["Martin Scorsece", "The Wolf of Wall Street"]]

movies.to_h.inspect
