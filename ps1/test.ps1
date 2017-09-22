# Execute script with . ./scriptname

$url = "http://adict.bcn.rd.hpicorp.net:88/cim/fmw/ipg-atlas_bcd/vulcan/wrl60-haswell_x86_64-dbg/180973/vulcan-trunk-R180973-170921.sh"
$output = "$PSScriptRoot\vulcan-trunk-R180973-170921.sh" # $PSScriptRoot indicates the directory from which the script module is executed
$start_time = Get-Date #Get-Date specifies the current date (or a date you define) 

## Grabs the web page and downloads the file
#Invoke-WebRequest -Uri $url -OutFile $output

## Displays 'Time Taken" along with the time to complete
#Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"

$WebResponse = Invoke-WebRequest http://adict.bcn.rd.hpicorp.net:88/cim/fmw/ipg-atlas_bcd/vulcan/wrl60-haswell_x86_64-dbg/ # Gets webpage
#$WebResponse.Content # Displays underlying HTML

## Displays underlying HTML for select string
#$webResponse.tostring() -split "['r'n]" | select-string "180973"

## Displays underlying HTML for select string
#$webResponse.tostring() -split "['`"'/]" | select-string "180973"

## Displays underlying HTML for select string (one line) 
$webResponse.tostring() -split "['`"'/]" | select-string "180973" | Select -First 1 

#Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"