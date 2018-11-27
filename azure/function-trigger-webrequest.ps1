 $urls = @("https://www.url1.com","http://www.url2.com","http://url3.com")

 foreach ($uri in $urls) {
   Try
     {
         $result = Invoke-Webrequest -Uri $uri -UseBasicParsing -ErrorAction Stop
     }
     Catch
     {
         $ErrorMessage = $_.Exception.Message
     }

Write-Output "PowerShell Timer trigger function executed at:$(get-date) returned HTTP code: $($result.StatusCode) for website $uri)";

 }
