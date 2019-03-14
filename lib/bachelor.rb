def get_first_name_of_season_winner(data, season)
  # code here
  name = []
  data.each do |keys, values|
    if keys == season
      values.each do |values|
      if values["status"] == "Winner"
        name.push(values["name"])
      end
      end
    end
  end
  name.split.first
end

def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
