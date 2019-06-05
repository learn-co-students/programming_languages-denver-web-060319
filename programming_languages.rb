require "pry"


def reformat_languages (languages)
  revised_lang = {}
  languages.each do |style, data|
    data.each do |name, type|
    if revised_lang[name] == nil
      revised_lang[name] = type
      revised_lang[name][:style] = []
      end
      revised_lang[name][:style] << style
    end
  end
  return revised_lang
end