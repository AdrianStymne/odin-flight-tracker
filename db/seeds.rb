# This file contains seed data for major airports around the world
# Run this file with `rails db:seed` or create with `rails db:setup`

# Clear existing airports to avoid duplicates
puts "Clearing existing airports..."
Airport.destroy_all

# Create a collection of major world airports
puts "Creating airports..."

airports = [
  # North America
  { name: "Hartsfield-Jackson Atlanta International Airport", code: "ATL" },
  { name: "Los Angeles International Airport", code: "LAX" },
  { name: "O'Hare International Airport", code: "ORD" },
  { name: "Dallas/Fort Worth International Airport", code: "DFW" },
  { name: "Denver International Airport", code: "DEN" },
  { name: "John F. Kennedy International Airport", code: "JFK" },
  { name: "San Francisco International Airport", code: "SFO" },
  { name: "Seattle-Tacoma International Airport", code: "SEA" },
  { name: "Toronto Pearson International Airport", code: "YYZ" },
  { name: "Vancouver International Airport", code: "YVR" },
  { name: "Mexico City International Airport", code: "MEX" },

  # Europe
  { name: "London Heathrow Airport", code: "LHR" },
  { name: "Paris Charles de Gaulle Airport", code: "CDG" },
  { name: "Amsterdam Airport Schiphol", code: "AMS" },
  { name: "Frankfurt Airport", code: "FRA" },
  { name: "Madrid Barajas Airport", code: "MAD" },
  { name: "Barcelona–El Prat Airport", code: "BCN" },
  { name: "Rome Fiumicino Airport", code: "FCO" },
  { name: "Munich Airport", code: "MUC" },
  { name: "Zurich Airport", code: "ZRH" },
  { name: "Istanbul Airport", code: "IST" },

  # Asia
  { name: "Beijing Capital International Airport", code: "PEK" },
  { name: "Tokyo Haneda Airport", code: "HND" },
  { name: "Dubai International Airport", code: "DXB" },
  { name: "Hong Kong International Airport", code: "HKG" },
  { name: "Singapore Changi Airport", code: "SIN" },
  { name: "Seoul Incheon International Airport", code: "ICN" },
  { name: "Bangkok Suvarnabhumi Airport", code: "BKK" },
  { name: "Indira Gandhi International Airport", code: "DEL" },
  { name: "Kuala Lumpur International Airport", code: "KUL" },
  { name: "Taiwan Taoyuan International Airport", code: "TPE" },

  # Australia/Oceania
  { name: "Sydney Kingsford Smith Airport", code: "SYD" },
  { name: "Melbourne Airport", code: "MEL" },
  { name: "Brisbane Airport", code: "BNE" },
  { name: "Auckland Airport", code: "AKL" },

  # South America
  { name: "São Paulo–Guarulhos International Airport", code: "GRU" },
  { name: "El Dorado International Airport", code: "BOG" },
  { name: "Jorge Chávez International Airport", code: "LIM" },
  { name: "Ministro Pistarini International Airport", code: "EZE" },
  { name: "Santiago International Airport", code: "SCL" },

  # Africa
  { name: "O. R. Tambo International Airport", code: "JNB" },
  { name: "Cairo International Airport", code: "CAI" },
  { name: "Cape Town International Airport", code: "CPT" },
  { name: "Murtala Muhammed International Airport", code: "LOS" },
  { name: "Jomo Kenyatta International Airport", code: "NBO" }
]

# Create each airport in the database
airports.each do |airport_data|
  airport = Airport.create!(
    name: airport_data[:name],
    code: airport_data[:code]
  )
  puts "Created airport: #{airport.code} - #{airport.name}"
end

puts "Created #{Airport.count} airports successfully!"
