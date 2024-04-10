[CmdletBinding()]
param(
   [String] $File,
   [String] $Cert,
   [String] $Password,
   [String] $SignTool
)


function SignFile {
   param(
      [Parameter(Mandatory = $True, Position = 1)]
      [string]$file
   )

   $process = Start-Process -FilePath $SignTool -ArgumentList "sign /fd SHA256 /a /f $Cert /p $Password $file" -Wait -PassThru -NoNewWindow
   if ($process.ExitCode -ne 0) {
      $exitCode = $process.ExitCode
      throw "Signing FAILED($exitCode)"
   }
}

SignFile $File