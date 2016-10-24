 Meeting.create(
	nom: "Se la coller à République",
	latitude: 48.86751,
	longitude: 2.363777,
	participants: "Paul, Pierre, Jacques",
	date: DateTime.new(2016,12,31,23,59,59)
	)
Meeting.create(
	nom: "Tournée générale d'aspirine",
	latitude: 48.852969,
	longitude: 2.349873,
	participants: "Jacqui Michel",
	date: DateTime.new(2017,01,01,14,00,00)
	)
Meeting.create(
	nom: "Laporta",
	latitude: 48.86751,
	longitude: 2.363777,
	participants: "Charlie",
	date: DateTime.new(2016,12,31,23,59,59)
	)
Meeting.create(
	nom: "Sous locean",
	latitude: 48.852969,
	longitude: 2.349873,
	participants: "JMichel",
	date: DateTime.new(2017,01,01,14,00,00)
	)

User.create(
	last_name: "Le Dreff",
	first_name: "Jean-Malo",
	latitude: 48.4597,
	longitude: -5.0862,
	email: "blabla@polytechnique.edu",
	meeting_id: 1,
	)
User.create(
	last_name: "Naudy",
	first_name: "Charlie",
	latitude: 47.4597,
	longitude: -3.0862,
	email: "ouioui@polytechnique.edu",
	meeting_id: 1,
	)
User.create(
	last_name: "DJ",
	first_name: "Ghislain",
	latitude: 44.4597,
	longitude: 0.0862,
	email: "pioupiou@polytechnique.edu",
	meeting_id: 2,
	)