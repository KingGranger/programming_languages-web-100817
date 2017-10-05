require 'pry'

languages = {
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
}

def reformat_languages(languages)
  new_hash = {}
  languages.each do |styles, hash_lg|
    hash_lg.each do |language, attributes|
      new_hash[language] = {}
      attributes.each do |type, type_value|
        new_hash[language][type] = type_value
        new_hash[language][:style] = []
      end
    end

  end
  binding.pry
  new_hash
end

reformat_languages(languages)
