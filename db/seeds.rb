["PHP", "MySQL", "C#", "Ruby on Rails", "Ruby on Rails", "SQL Server", "Linux"].each do |skill|
Skill.find_or_create_by_name(skill)
end

location_list = [
  [ "Chicago", 41.8819, -87.6278 ],
  [ "Boston", 42.3581, -71.0636 ],
  [ "Houston", 29.7628, -95.3831 ],
  [ "San Francisco", 37.7833, -122.4167 ],
  [ "London", 51.5072, -0.1275 ],
  [ "Mumbai", 18.9750, 72.8258 ]
]

location_list.each do |location_name, latitude, longitude|
  Location.create( location_name: location_name, latitude: latitude, longitude: longitude)
end