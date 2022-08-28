Stop-Service -Name wuauserv #May take multiple runs, sometimes WU service doesn't want to stop on the first try
Remove-Item $env:systemroot\SoftwareDistribution -Recurse -Force
Remove-Item $env:systemroot\WindowsUpdate.log #Optional, if logs aren't needed or are too large
Start-Service -Name wuauserv