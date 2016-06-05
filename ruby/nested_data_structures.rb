ohare_international_airport = {
	terminal_a: {
		american_airlines: [
			"gate 1",
			"gate 2",
			"gate 3",
			"gate 4"
		],
		southwest_airlines: [
			"gate 5",
			"gate 6",
			"gate 7"
		],
		food_court: {
			food: ["McDonald's", "Burger King"],
			drinks: ["Starbucks", "Smoothie King", "Teavana"],
			shops: ["Border's", "Barnes and Noble"]
		}
	},
	terminal_b: {
		delta_airlines: [
			"gate 8",
			"gate 9"
		]
	}
}

p ohare_international_airport[:terminal_a]
p ohare_international_airport[:terminal_b][:delta_airlines]
p ohare_international_airport[:terminal_a][:food_court][:drinks][1]
p ohare_international_airport[:terminal_b][:delta_airlines][0].upcase