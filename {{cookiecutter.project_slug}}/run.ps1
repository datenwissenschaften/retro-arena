$ErrorActionPreference = "Stop"

Set-Location $PSScriptRoot

if (Get-Command poetry -ErrorAction SilentlyContinue) {
    poetry install
    & poetry run python app.py
    exit $LASTEXITCODE
}

if ($env:VIRTUAL_ENV -or $env:POETRY_ACTIVE) {
    if (Get-Command py -ErrorAction SilentlyContinue) {
        & py -3 app.py
        exit $LASTEXITCODE
    }
    & python app.py
    exit $LASTEXITCODE
}

Write-Host "Poetry is required to set up the environment."
Write-Host "Please install it: https://python-poetry.org/docs/#installation"
exit 1
