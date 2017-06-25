def get_first_name_of_season_winner(data, season)
    winner = nil
    data.each do |seasons, contestant_array|
        if season == seasons
            contestant_array.each do |contestant|
               if contestant["status"] == "Winner"
                winner = contestant["name"].split
                winner = winner[0]
                    end
                end
            end
        end
    winner
end

    

def get_contestant_name(data, occupation)
    selected = nil
    data.each do |seasons, contestant_array|
        contestant_array.find do |contestant|
            if contestant["occupation"] == occupation
                selected = contestant["name"]
                end
            end
        end
    selected
end

def count_contestants_by_hometown(data, hometown)
    hometown_count = 0
    data.each do |season, contestant_array|
        contestant_array.each do |contestant|
            if contestant["hometown"] == hometown
                hometown_count = hometown_count + 1
            end
        end
    end
    hometown_count
end

def get_occupation(data, hometown)
    selected = nil
    data.each do |seasons, contestant_array|
        contestant_array.find do |contestant|
            if contestant["hometown"] == hometown
                selected = contestant["occupation"]
                end
            end
        end
    selected
end

def get_average_age_for_season(data, season)
  contestant_age = data[season].collect do |contestant|
      contestant["age"].to_i
      end
  total = contestant_age.reduce(0) { |sum, age| sum += age }
  num_of_contestants = contestant_age.count.to_f
  (total/num_of_contestants).round
end
