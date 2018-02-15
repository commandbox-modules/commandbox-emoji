# commandbox-emoji

_simple emoji support for CommandBox projects_

## Installation
To install `commandbox-emoji`, you need [CommandBox](https://www.ortussolutions.com/products/commandbox/) :rocket:

Once you have that set-up, just run `box install commandbox-emoji` in your shell and :boom:

You're now ready to use emoji in your node projects! Awesome! :rocket:

## Usage

You can use this project to execute the `emoji` command pass in the emoji key to emit.  However, you can also use it as a library for building nice emoji based CLI applications by injecting the `EmojiService@commandbox-emoji` into your CommandBox Tasks, Modules, Commands, etc.

```javascript
// Inject the emoji service
property name="emoji" inject="emojiService@commandbox-emoji";

// Use it

emoji.get('coffee') // returns the emoji code for coffee (displays emoji on terminals that support it)
emoji.which(emoji.get('coffee')) // returns the string "coffee"
emoji.get(':fast_forward:') // `.get` also supports github flavored markdown emoji (http://www.emoji-cheat-sheet.com/)
emoji.emojify('I :heart: :coffee:!') // replaces all :emoji: with the actual emoji, in this case: returns "I ❤️ ☕️!"
emoji.random() // returns a random emoji + key, e.g. `{ emoji: '❤️', key: 'heart' }`
emoji.search('cof') // returns an array of objects with matching emoji's. `[{ emoji: '☕️', key: 'coffee' }, { emoji: ⚰', key: 'coffin'}]`
emoji.unemojify('I ❤️ 🍕') // replaces the actual emoji with :emoji:, in this case: returns "I :heart: :pizza:"
emoji.find('🍕') // Find the `pizza` emoji, and returns `({ emoji: '🍕', key: 'pizza' })`;
emoji.find('pizza') // Find the `pizza` emoji, and returns `({ emoji: '🍕', key: 'pizza' })`;
emoji.hasEmoji('🍕') // Validate if this library knows an emoji like `🍕`
emoji.hasEmoji('pizza') // Validate if this library knowns a emoji with the name `pizza`
emoji.strip('⚠️ 〰️ 〰️ low disk space') // Strips the string from emoji's, in this case returns: "low disk space".
emoji.replace('⚠️ 〰️ 〰️ low disk space', (emoji) => `${emoji.key}:`) // Replace emoji's by callback method: "warning: low disk space"
```

