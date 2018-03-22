component{

    property name="emojiService" inject="emojiService@cbemoji";

    /**
     * Get an emoji by name or github flavored markdown emoji: http://www.emoji-cheat-sheet.com/)
     * @name The name or markdown, ex: coffee or :coffee:
     */
    function run( required name ){
    	print.text( emojiService.get( arguments.name ) );
    }

}