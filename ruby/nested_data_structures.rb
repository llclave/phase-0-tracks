highway = {
	sedan: {
		passengers: [
			'Bill',
			'Pearle',
			'Morton'
		],
		things: [
			'towel',
			'beach ball',
			'frisby'
		]
	},

	SUV: {
		passengers: [
			'Rob',
			'George'
		],
		things: [
			'ski',
			'snowboard'
		]
	},

	van: {
		passengers: [
			'Ed',
			'Edd',
			'Eddy'
		],
		things: [
			'tent',
			'food',
			'candy',
			'pajamas'
		]
	},

	truck: {
		passengers: ['Joe'],
		things: [
			'couches',
			'beds'
		]
	},

	motorcycle: {
		passengers: ['Alan'],
		things: ['helmet']
	}
}

puts "The van on the highway has the passengers: #{highway[:van][:passengers]}"
puts "There are #{highway[:truck][:things][0]} and #{highway[:truck][:things][1]} in the truck being driven by #{highway[:truck][:passengers][0]}!"
puts "Does the SUV have a snowboard?: #{highway[:SUV][:things].include?('snowboard')}"


