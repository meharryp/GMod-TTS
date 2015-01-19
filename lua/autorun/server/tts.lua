util.AddNetworkString( "SayTTS" )

hook.Add( "PlayerSay", "TTSFTW", function( ply, text, team )
	if not team then
		if string.sub( text, 1, 1 ) != "/" and string.sub( text, 1, 1 ) != "!" and string.sub( text, 1, 1 ) != "@" then
			net.Start( "SayTTS" )
			net.WriteString( text )
			net.WriteEntity( ply )
			net.Broadcast()
		end
	end
end )