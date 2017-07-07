insults = []
CSV.foreach('db/data/insults.csv', headers: true) do |row|
  insults << Insult.create!(row.to_h)
end

stations = []
CSV.foreach('db/data/stations.csv', headers: false) do |row|
  station = {
    name: row[0],
    human_name: row[2],
    synonyms: row[3, (row.length - 1)]
  }
  stations << Station.create!(station)
end
