component{

    property name="emojiService" inject="emojiService@cbemoji";

    /**
     * Emojify a string with embedded markdown :emoji:
     *
     * @string The string to emojify, e.g: I :heart: :coffee:!
     */
    function run( required string ){
    	print.text( emojiService.emojify( arguments.string ) );
    }

}