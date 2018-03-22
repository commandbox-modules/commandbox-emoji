component{

    property name="emojiService" inject="emojiService@cbemoji";

    /**
     * Prints the entire emoji map we support
     */
    function run(){
		var map 	= emojiService.getEmojiMap();
		var keys 	= map.keyArray().sort( "text", "asc" );

		keys
			.each( function( item ){
				print.line( ":#item#: => #map[ item ]#" );
			} );
    }

}