def reformat_languages(languages)
  new_hash = {}
  languages.each do |key, value|
      value.each do |key2, value2|
        new_hash[key2] = value2
        new_hash[key2][:style] = []
     end
  end
  languages.each do |key, value|
      value.each do |key2, value2|
        new_hash[key2][:style] << key
      end
    end
  new_hash
end
