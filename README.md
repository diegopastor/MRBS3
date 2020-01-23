# Magic Realism Bot Spanish Version 3 ✨

🦀🍊🐥🌳🦋☂️🦉🌛🗝

![Sentence Being Replaced](https://github.com/diegopastor/MRBS3/blob/master/type.gif)

## What is MRBS3 ?

A collection of files that automagically generate and tweet a "Magic Realism" tweet in spanish every 4 hours. Inspired by [it's english version](https://twitter.com/MagicRealismBot). This time the files are published openly licensed by the MIT license. And contributions are encouraged.

## How to Contribute ?

First, a brief explanation of how tweets are generated:

There are a total of 6 Tables in the SQL database.

1. Bases
2. Objects
3. Specials
4. Verbs
5. People
6. Adjectives

The most important Table is the `Bases` table it contains all the "bases" from which every tweet is generated. A base contains a series of keywords that are placeholders for other words or sentences. This keywords have the following format: `$table-tag`. In order to generate a tweet, a base is selected randomly and then filled with words/sentences from the other tables.

For example:

The base `$ob-sunn está $ver-burnverb en un $ob-garbagedumpH` is selected. Then we proceed to replace all the placeholder keywords with corresponding actual values. The first keyword to replace is `$ob-sunn` so we look in the objects table and select a random entry that contains the tag `sunn` and we get, for example, "El Sol" and we replace the keyword with the value. We now have: `El Sol está $ver-burnverb en un $ob-garbagedumpH` we then look in the verbs table for a verb with the tag `burnverb` and after that in the objects table again for an object with the tag `garbagedumpH` and we replace each keyword respectively. Obtaining the sentence: `El Sol está jugando golf en un circo` (The Sun is playing golf at a circus) ☀️🏌️🎪.

Of course, the replacement for a keyword can itself contain more keywords to be replaced. This would allow for infinitely nested replacements and for your creativity to go wild while creating complex sentence structures that create the feeling of unique sentences every time.

So, you can contribute by adding bases with their corresponding replacements, more replacements of any "table" and "tag" or anything you want.
