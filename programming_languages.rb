def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, langs|
    langs.each do |lang, info|
      info.each do |type, typev|
        new_hash[lang] = {
          type: typev
        }
        new_hash[lang][:style] = "hi"
      end
    end
  end
  new_hash

end
