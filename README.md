# commandbox-emoji

_simple emoji support for CommandBox projects_

## Installation
To install `commandbox-emoji`, you need [CommandBox](https://www.ortussolutions.com/products/commandbox/) :rocket:

Once you have that set-up, just run `box install commandbox-emoji` in your shell and :boom:

You're now ready to use emoji in your CFML projects! Awesome! :rocket:

## Usage

You can use this module as a set of commands or as a library to enhance your CLI Applications.

### Commands

The following are the commands registered for you:

* `emoji` - Pass in a name for the emoji to render: `emoji heart`, `emoji :heart:`
* `emojify` - Pass in a string with github flavored emoji markdown to translate it: `I :heart: my :coffee:!`
* `unemojify` - Convert an emoji enabled string to github flavored emoji markdown: `I ❤️  you`
* `emojimap` - Prints out all the emoji's supported in this library.

### Emoji Service

If you want to leverage this module as an emoji service, you can leverage the following injection: `EmojiService@commandbox-emoji` into your CommandBox Tasks, Modules, Commands, etc. Then leverage tons of helper methods for Emoji goodness! :rocket:

```javascript
// Inject the emoji service
property name="emoji" inject="emojiService@commandbox-emoji";

// Use it

emoji.get( 'coffee' ) // returns the emoji code for coffee (displays emoji on terminals that support it)

emoji.which(emoji.get( 'coffee' )) // returns the string "coffee"

emoji.get( ':fast_forward:' ) // `.get` also supports github flavored markdown emoji (http://www.emoji-cheat-sheet.com/)

emoji.emojify( 'I :heart: :coffee:!' ) // replaces all :emoji: with the actual emoji, in this case: returns "I ❤️ ☕️!"

emoji.random() // returns a random emoji + key, e.g. `{ emoji: '❤️', key: 'heart' }`

emoji.search( 'cof' ) // returns an array of objects with matching emoji's. `[{ emoji: '☕️', key: 'coffee' }, { emoji: ⚰', key: 'coffin'}]`

emoji.unemojify( 'I ❤️ 🍕' ) // replaces the actual emoji with :emoji:, in this case: returns "I :heart: :pizza:"

emoji.hasEmoji( '🍕' ) // Validate if this library knows an emoji like `🍕`

emoji.hasEmoji( 'pizza' ) // Validate if this library knowns a emoji with the name `pizza`
```

