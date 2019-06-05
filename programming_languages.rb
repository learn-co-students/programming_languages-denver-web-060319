def reformat_languages(languages)
  new_hash = {}
  languages.each do |types, languages|
    languages.each do |language, attributes|
      new_hash[language] ||= attributes
      new_hash[language][:style] ||= []
      new_hash[language][:style] << types
    end
  end
  new_hash
end

# def reformat_languages(languages)
#   new_languages = {}
#   languages.each do |type, hash|
#     hash.each do |name, attributes|
#       new_languages[name] ||= attributes
#       new_languages[name][:style] ||= []
#       new_languages[name][:style] << type
#     end
#   end
#   new_languages
# end