Highway = [
	{car:"Shelby", passenger: ["Carrol", "Dan"], details:{color:"blue", body_style:"2-door coupe", Horse_power: 662}},
	{car: "Viper", passenger: "Justin", details:{color:"purple", body_style:"2-door coupe", Horse_power: 645}},
	{car: "Prius", passenger: "Bill Nye", details:{color:"white", body_style:"5-door hatchback", Horse_power: 121}},
	{car: "Corvette", passenger:"Bill Mitchell", details:{color:"red", body_style:"2-door coupe", Horse_power: 650}}
]

puts "#{Highway[2][:passenger]} Can't win a race with only #{Highway[2][:details][:Horse_power]} Horse power"

puts "But #{Highway[0][:passenger][0]} isn't trying to save the environment with his #{Highway[0][:details][:color]} #{Highway[0][:car]}, and #{Highway[0][:details][:Horse_power]} IS a little overkill."