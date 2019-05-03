def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |trait, trait_data|
    trait_data.each do |details, names|
      names.each do |name|
        if pigeon_list[name]
          if pigeon_list[name][trait.to_sym]
            pigeon_list[name][trait.to_sym] << details.to_s
          else
            pigeon_list[name][trait.to_sym] = []
          end
        else
          pigeon_list[name] = {}
        end
      end
    end
  end
  return pigeon_list
end


pigeon_data = {
        :color => {
          :purple => ["Theo", "Peter Jr.", "Lucky"],
          :grey => ["Theo", "Peter Jr.", "Ms. K"],
          :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
          :brown => ["Queenie", "Alex"]
        },
        :gender => {
          :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
          :female => ["Queenie", "Ms. K"]
        },
        :lives => {
          "Subway" => ["Theo", "Queenie"],
          "Central Park" => ["Alex", "Ms. K", "Lucky"],
          "Library" => ["Peter Jr."],
          "City Hall" => ["Andrew"]
        }
      }
puts nyc_pigeon_organizer(pigeon_data)