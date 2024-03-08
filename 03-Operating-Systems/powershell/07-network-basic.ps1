$client = New-Object -TypeName System.Net.Sockets.TCPClient -ArgumentList "localhost",2066

$stream = $client.GetStream( )
$writer = New-Object System.IO.StreamWriter( $stream )
$buffer = New-Object System.Byte[] 1024
$encoding = New-Object System.Text.AsciiEncoding

$writer.WriteLine( "\d" )
$writer.Flush( )

$response = $stream.Read( $buffer, 0, 1024 )
Write-host -n ($encoding.GetString($buffer,0,$response))

$writer.Close()
$stream.Close()

# Task
# download html file from tasks in block 01