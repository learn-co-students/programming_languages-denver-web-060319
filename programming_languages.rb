require 'pry'

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |type, data|
  	data.each do |lang, attr|
  		
  		if (!new_hash[lang])
  			new_hash[lang] = attr
  		end
  		
  		if(new_hash[lang][:style])
  			new_hash[lang][:style] << type
  		else
  			new_hash[lang][:style] = [type]
  		end
  		
  	end
  end
  new_hash
end

reformat_languages(    {
      :oo => {
        :ruby => {
          :type => "interpreted"
        },
        :javascript => {
          :type => "interpreted"
        },
        :python => {
          :type => "interpreted"
        },
        :java => {
          :type => "compiled"
        }
      },
      :functional => {
        :clojure => {
          :type => "compiled"
        },
        :erlang => {
          :type => "compiled"
        },
        :scala => {
          :type => "compiled"
        },
        :javascript => {
          :type => "interpreted"
        }
     
      }
    })