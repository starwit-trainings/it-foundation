
# https://www.msxfaq.de/code/powershell/pshttpserver.htm

Write-host "Web Listener: Start"

try {
   $listener = New-Object System.Net.HttpListener
   $listener.Prefixes.Add('http://+:3081/')  
   $listener.Start()
}
catch {
   write-error "Unable to open listener. Check Admin permission or NETSH Binding"
   exit 1
}

Write-host "Web Listener listening"
$basename = (get-date -Format yyyyMMddHHmmss)
$count = 0

$Host.UI.RawUI.FlushInputBuffer()
[console]::TreatControlCAsInput = $true
write-host "Press any key to end after the next incoming request"
while (!([console]::KeyAvailable)) {
   $count++
   write-host ("Listening on " + $listener.Prefixes )
   $context = $listener.GetContext() # Listening for requests
   write-host "------- New Request ($count) arrived ------------"
   $request = $context.Request
   write-host (" URL.AbsoluteUri:" + $request.URL.AbsoluteUri)
   write-host (" HttpMethod     :" + $request.HttpMethod)
   if ($request.HasEntityBody) {
      write-host "Exporting Body"
      # converting streamreader to string
      $rcvStream = [System.IO.StreamReader]::new($context.Request.InputStream).ReadToEnd()
      $rcvStream | out-file -filepath ("request"+$basename+$count+".txt")
   }
   else {
      write-host "No Body"
   }

   write-host "------- Sending OK Response ------------"
   $response = $context.Response
   $response.ContentType = 'text/plain'
   $message = "Anfrage verarbeitet"
   [byte[]] $buffer = [System.Text.Encoding]::UTF8.GetBytes($message)
   $response.ContentLength64 = $buffer.length
   $response.OutputStream.Write($buffer, 0, $buffer.length)
   $response.OutputStream.close()
}

$listener.Stop()

# Task
# extract context path and try to find a matching file. Return file content or 404