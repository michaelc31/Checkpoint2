function Log
{
    param([string]$FilePath,[string]$Content)

    # Vérifie si le fichier existe, sinon le crée
    If (-not (Test-Path -Path $FilePath))
    {
        New-Item -ItemType File -Path $FilePath 
    }

    # Construit la ligne de journal
    $Date = Get-Date -Format "dd/MM/yyyy-HH:mm:ss"
    $User = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name
    $logLine = "$Date;$User;$Content"

    # Ajoute la ligne de journal au fichier
    Add-Content -Path $FilePath -Value $logLine
}

Function Random-Password ($length = 10)
{
    $punc = 46..46
    $digits = 48..57
    $letters = 65..90 + 97..122

    $password = get-random -count $length -input ($punc + $digits + $letters) |`
        ForEach -begin { $aa = $null } -process {$aa += [char]$_} -end {$aa}
    Return $password.ToString()
}

Function ManageAccentsAndCapitalLetters
{
    param ([String]$String)
    
    $StringWithoutAccent = $String -replace '[éèêë]', 'e' -replace '[àâä]', 'a' -replace '[îï]', 'i' -replace '[ôö]', 'o' -replace '[ùûü]', 'u'
    $StringWithoutAccentAndCapitalLetters = $StringWithoutAccent.ToLower()
    $StringWithoutAccentAndCapitalLetters
}
$Path = "C:\Scripts"
$CsvFile = "$Path\Users.csv"
$LogFile = "$Path\Log.log"

$Users = Import-Csv -Path $CsvFile -Delimiter ";" -Header "prenom","nom","fonction","description" -Encoding UTF8  | Select-Object -Skip 1

foreach ($User in $Users)
{
    $Prenom = ManageAccentsAndCapitalLetters -String $User.prenom
    $Nom = ManageAccentsAndCapitalLetters -String $User.Nom
    $Name = "$Prenom.$Nom"
    If (-not(Get-LocalUser -Name "$Prenom.$Nom" -ErrorAction SilentlyContinue))
    {
        $Pass = Random-Password -PasswordNeverExpires $true
        $Password = (ConvertTo-secureString $Pass -AsPlainText -Force )
        $Description = "$($user.description) - $($User.fonction)"
        $UserInfo = @{
            Name                 = "$Name"
            FullName             = "$Name"
            Password             = $Password
            AccountNeverExpires  = $true
            PasswordNeverExpires = $false
            Description = "$Description"
        }
        Log
        New-LocalUser @UserInfo 
        Add-LocalGroupMember -Group "Utilisateurs" -Member "$Name"
        Write-Host "L'utilisateur $Prenom.$Nom a été crée et son mot de passe est $Pass"
    }
    else
    {
        Write-Host "L'utilisateur $Name existe deja"
    }
}
