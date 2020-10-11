# Magic Realism Bot Spanish Version 3 ✨

<p align="center">
	🦀🍊🐥🌳🦋☂️🦉🌛🗝
</p>

![Sentence Being Replaced](https://github.com/diegopastor/MRBS3/blob/master/assets/img/type.gif)

## Table of Contents

- [What is MRBS3?](#What-is-MRBS3?)
- [How to Contribute?](#How-to-Contribute?)
    - [TL;DR](#TL;DR)
    - [TL;DR](#TL;DR)

## What is MRBS3?

A collection of files that "automagically" generate and tweet a "Magic Realism" tweet in spanish every 4 hours. Inspired by [it's english version](https://twitter.com/MagicRealismBot). This time the files are published openly licensed by the MIT license. Furthermore, contributions are encouraged.

## How to Contribute?

First, a brief explanation of how sentences are generated.

We have a SQL database from which we obtain "bases". Bases are sentences that contain a set of keywords. Keywords are strings formed with a specific format that act as placeholders for other strings. A Node.js script takes a random base, fills it's placeholder keywords by querying the SQL database for replacements, and then tweets the freshly generated sentence!

### Keywords and tables

Keywords are formed by four parts:

- `$`: A dollar sign
- table id: A table identifier, which points to a table name. Any of: [`ob`, `sp`,`ver`,`per`, `ad`]
- `-`: A hyphen used to separate between the "table id" and the "tag"
- tag: A tag, which is simply an identifier for referring to a collection of similar things.

So, for example, these are all keywords:

- `$ob-liquid`
- `$ad-color`
- `$per-histfig`

The table id's point to SQL table names. There are a total of 6 tables in our SQL database:

1. **Bases**: Contains all the "bases" from which every tweet is generated.
2. **Objects**: Contains strings classified as objects. (Identified with the `ob` table id)
3. **Specials**: Contains "sub-bases" for structuring more diverse and complex sentences. (Identified with the `sp` table id)
4. **Verbs**: Contains strings classified as actions. (Identified with the `ver` table id)
5. **People**: Contains strings classified as historical figures, occupations and things considered "people". (Identified with the `per` table id)
6. **Adjectives**: Contains strings classified as adjectives. (Identified with the `ad` table id)

And the tag's point to a "tag" property in each of the SQL tables schemas. Each tag is meant to be a string that represents a collection of similar things. Be it, similar objects, similar verbs, similar adjectives, etc.

So, returning to the previously mentioned keywords:

- `$ob-liquid`: Is referring to something in the Objects table classified under the "liquid" tag.
- `$ad-color`: Is referring to something in the Adjectives table classified under the "color" tag.
- `$per-histfig`: Is referring to something in the People table classified under the "histfig" tag.

In order to generate a sentence a base is selected randomly and then it's keywords are filled with words/sentences from the other tables.

For example:

The base `$ob-sunn está $ver-burnverb en un $ob-garbagedumpH` is selected. Then we proceed to replace all the placeholder keywords with corresponding actual values. The first keyword to replace is `$ob-sunn` (we replace from left to right) so we look in the **Objects** table and select a random entry that contains the tag `sunn`. We get, for example, "El Sol" so we replace the keyword with the value. We now have: `El Sol está $ver-burnverb en un $ob-garbagedumpH` we then look in the **Verbs** table for a verb with the tag `burnverb`, replace the placeholder keyword and after that look in the **Objects** table again for an object with the tag `garbagedumpH`. We replace the `$ob-garbagedumpH` keyword with the freshly obtained filler and we are done! We just obtained the sentence: `El Sol está jugando golf en un circo` (The Sun is playing golf at a circus) ☀️🏌️🎪.

1. `$ob-sunn está $ver-burnverb en un $ob-garbagedumpH`
2. `El Sol está $ver-burnverb en un $ob-garbagedumpH`
3. `El Sol está jugando golf en un $ob-garbagedumpH`
4. `El Sol está jugando golf en un circo`

Of course, the replacement for a keyword can itself contain more keywords to be replaced. This would allow for infinitely nested replacements and for your creativity to go wild while creating complex sentence structures that create the feeling of unique sentences every time.

So, you can contribute by adding bases with their corresponding replacements, more replacements of any "table" and "tag" or anything you want.

## How to run your own instance of MRBS3 ?



### Project Structure
