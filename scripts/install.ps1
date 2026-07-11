[CmdletBinding()]
param(
    [ValidateSet("all", "tg-product-ugc-video", "tg-amazon-listing-visual-builder")]
    [string]$Skill = "all",
    [switch]$Force
)

$ErrorActionPreference = "Stop"

$repoRoot = (Resolve-Path (Join-Path $PSScriptRoot "..")).Path
$sourceRoot = Join-Path $repoRoot "skills"
$codexRoot = if ([string]::IsNullOrWhiteSpace($env:CODEX_HOME)) {
    Join-Path $HOME ".codex"
} else {
    $env:CODEX_HOME
}
$destinationRoot = Join-Path $codexRoot "skills"

$selectedSkills = if ($Skill -eq "all") {
    @("tg-product-ugc-video", "tg-amazon-listing-visual-builder")
} else {
    @($Skill)
}

New-Item -ItemType Directory -Path $destinationRoot -Force | Out-Null

foreach ($skillName in $selectedSkills) {
    $source = Join-Path $sourceRoot $skillName
    $destination = Join-Path $destinationRoot $skillName

    if (-not (Test-Path -LiteralPath (Join-Path $source "SKILL.md"))) {
        throw "Invalid skill source: $source"
    }

    if (Test-Path -LiteralPath $destination) {
        if (-not $Force) {
            throw "Skill already exists: $destination. Re-run with -Force to replace it."
        }
        Remove-Item -LiteralPath $destination -Recurse -Force
    }

    Copy-Item -LiteralPath $source -Destination $destination -Recurse
    Write-Host "Installed $skillName to $destination"
}

Write-Host "Installation complete. Restart Codex or start a new task to reload the skill list."
