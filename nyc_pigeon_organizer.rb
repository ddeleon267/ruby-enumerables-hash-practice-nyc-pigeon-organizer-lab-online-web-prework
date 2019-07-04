require "pry"

def nyc_pigeon_organizer(data)
  p_hash = {}

  data.each do |att, attr_data|
    attr_data.each do |attr_ex, names_arr|
      names_arr.each do |name|
        p_hash[name] = {} if !p_hash[name]
        p_hash[name][att] = [] if !p_hash[name][att]
        p_hash[name][att] << attr_ex.to_s
      end
    end
  end

  p_hash
end
