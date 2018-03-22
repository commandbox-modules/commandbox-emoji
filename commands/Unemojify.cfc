component{

    property name="emojiService" inject="emojiService@cbemoji";

    /**
     * UnEmojify a string with embedded emojis
     *
     * @string The string to uemojify, e.g: I ❤ 🍕
     */
    function run( required string ){
    	print.text( emojiService.unemojify( arguments.string ) );
    }

}