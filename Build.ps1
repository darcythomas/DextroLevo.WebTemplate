
try {
    Push-Location

    cd $PSScriptRoot

    cd ./src/DextroLevo.WebTemplate.Nuget

    dotnet pack 

    Write-Host "Boom! There I built all the things"
}
catch {
    Write-Host "Bad things, sorry"
}
finally {
    Pop-Location
}
