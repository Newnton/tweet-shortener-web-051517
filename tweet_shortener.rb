def dictionary(tweet)
  dictionary = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "For" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
  }
  twort = 0
  tweet = tweet.split(" ")
  tweet.each do |word|
    if dictionary.include?(word)
      tweet[twort] = dictionary[word]
    end
    twort += 1
  end
  tweet.join(" ")
end

def word_substituter(tweet)
  dictionary(tweet)
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts dictionary(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140 && tweet.length > 130
     dictionary(tweet)
  else
     tweet
  end
end

def shortened_tweet_truncator(tweet)
  tweet = dictionary(tweet)
  len = tweet.length
  if len > 140
    tweet[137...len] = "..."
  end
  tweet
end
