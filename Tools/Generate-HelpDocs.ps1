function Export-HelpDocs {
    param (
        [string]$ModuleName = "IONModule",
        [string]$OutputPath = ".\Docs"
    )

    $commands = get-command -module $ModuleName
    foreach ($command in $commands) {
        Get-HelpByMarkDown $command.name > "$OutputPath\$($command.name).md"
    }
}