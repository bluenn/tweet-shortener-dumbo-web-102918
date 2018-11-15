require 'pry'

def dictionary
  shorter= {}

  shorter["hello"] = "hi"
  shorter["to"] = "2"
  shorter["two"] = "2"
  shorter["too"] = "2"
  shorter["for"] = "4"
  shorter["For"] = "4"
  shorter["four"] = "4"
  shorter["be"] = "b"
  shorter["you"] = "u"
  shorter["at"] = "@"
  shorter["and"] = "&"
  shorter
end

def word_substituter(tweet)
  words = tweet.split(" ")
  #key_regex = /\b(?:#{Regexp.union(dictionary.keys).source})\b/
  new_tweet = words.map do |word|
    #word.gsub(key_regex, dictionary)
    dictionary.fetch(word, word)
#     #string.gsub—takes two arguments, first is text you want to replace,
#     #second is the new text

    #if dictionary.keys.include?(word.downcase)
      #word = dictionary[word.downcase]
    #else 
      #word 
    #end 
  end
  new_tweet.join(" ")
end




def bulk_tweet_shortener(tweet_list)

  tweet_list.map do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length <= 140
    tweet

  else
    words = tweet.split(" ")
    #key_regex = /\b(?:#{Regexp.union(dictionary.keys).source})\b/
    new_tweet = words.map do |word|
      #word.gsub(key_regex, dictionary)
      dictionary.fetch(word, word)
#     #string.gsub—takes two arguments, first is text you want to replace,
#     #second is the new text
    end
    new_tweet.join(" ")
  end
end

def shortened_tweet_truncator(tweet)
  #if tweet.length <= 140
    #tweet
 #else
  words = tweet.split(" ")
  #key_regex = /\b(?:#{Regexp.union(dictionary.keys).source})\b/
  new_tweet = words.map do |word|
    #word.gsub(key_regex, dictionary)
    dictionary.fetch(word, word)
#     #string.gsub—takes two arguments, first is text you want to replace,
#     #second is the new text
  end
  new_tweet = new_tweet.join(" ")
  new_tweet.slice(0,140)
  #end
end

#if tweet.length <= 140
  #tweet
#else
