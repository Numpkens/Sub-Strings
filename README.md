
# Substring Counter

## Description
A Ruby program that takes a word or phrase and finds all matching substrings from a predefined dictionary. It returns a hash showing how many times each substring was found in the input text.

## Features
- Case insensitive matching
- Handles multiple words and punctuation
- Counts overlapping substrings
- Returns results in a hash format

## Usage
```ruby
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# Single word example
substrings("below", dictionary)
# => { "below" => 1, "low" => 1 }

# Multiple word example
substrings("Howdy partner, sit down! How's it going?", dictionary)
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
```

## How It Works
1. Creates a hash with default value of 0
2. Iterates through dictionary words
3. Scans input text for matches (case insensitive)
4. Counts occurrences of each substring
5. Returns hash with words and their counts

## Implementation Details
- Uses Ruby's `scan` method for substring matching
- Converts all text to lowercase for case-insensitive matching
- Handles punctuation and spaces automatically
- Returns a hash with substring counts

## Dependencies
- Ruby (any recent version)