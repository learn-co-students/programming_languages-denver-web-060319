def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, data|
    data.each do |lang, info|
      if new_hash.has_key?(lang)
        new_hash[lang][:style] << style
      else
        new_hash[lang] = info
        new_hash[lang][:style] = [style]
      end
    end      
  end
  new_hash

end
