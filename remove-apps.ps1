Get-AppxProvisionedPackage -Online | Where-Object DisplayName -like "*Microsoft.Microsoft3DViewer*" | ForEach-Object { 
    Remove-AppxProvisionedPackage -Online -PackageName $_.PackageName 
}

Get-AppxPackage -AllUsers | Where-Object Name -eq "Microsoft.Microsoft3DViewer" | ForEach-Object {
    Remove-AppxPackage -Package $_.PackageFullName
}
