component{

    property name="emojiService" inject="emojiService@commandbox-emoji";

    function run(
    ){

    	print.redLine( emojiService.search( "he" ) );

        print.greenLine( emojiService.emojify( "I :heart: you :heart: with :coffee: with :invalid:" ) );

        print.blueLine( emojiService.which( '💯' ) );

        print.greenLine( emojiService.random().toString() );
    }

}