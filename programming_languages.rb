def reformat_languages(languages)
  hi = 0
  new_hash = {}
  languages.each do |style, langs|
    langs.each do |lang, info|
      info.each do |type, typev|
        if new_hash[lang][:style].size <= 1
          hi = 1
          new_hash[lang][:style] << style
        else
        new_hash[lang] = {
          type: typev,
          style: [style]
        }
        end
      end
    end
  end
  new_hash
  hi
end
