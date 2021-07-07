
def reformat_languages(languages)
### 3 levels of iteration to get to the underlying values of compiled or interpreted.
### now, we want to create a new hash which goes in this order:
#####language_name
#####type & style
##### type_value
##### style_value
## Go all the way to the end of the nested hash so that each element along the way
## has a placeholder variable which we can directly position in the new hash.
new_hash = {}
  languages.each do |style, included_languages| #puts oo + each language hash.
    included_languages.each do |language_name, type_hash| # puts language name and type hash.
        type_hash.each do |type_key, type_value|
          new_hash[language_name] = {type_key => type_value, :style => [style]}
        end
      end
    end

new_hash[:javascript][:style].unshift(:oo)

new_hash
end
