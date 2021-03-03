#Change le nom 

Rename-Computer -NewName "hostnamechange"

#Crée 3 utilisateur

$nom = Read-Host "Merci de Rentrer le Nom et le Prénom de l’Utilisateur à Créer"

$login = Read-Host "Merci de Rentrer le Login de l’Utilisateur à Créer"

$mdp = Read-Host "Merci de Rentrer le Mot de Passe de l’Utilisateur à Créer"

New-ADUser -Name $nom -SamAccountName $login -UserPrincipalName $login@lavachette.com -AccountPassword (ConvertTo-SecureString -AsPlainText $mdp -Force) -PasswordNeverExpires $true -CannotChangePassword $true -Enabled $true

$nom = Read-Host "Merci de Rentrer le Nom et le Prénom de l’Utilisateur à Créer"

$login = Read-Host "Merci de Rentrer le Login de l’Utilisateur à Créer"

$mdp = Read-Host "Merci de Rentrer le Mot de Passe de l’Utilisateur à Créer"

New-ADUser -Name $nom -SamAccountName $login -UserPrincipalName $login@lavachette.com -AccountPassword (ConvertTo-SecureString -AsPlainText $mdp -Force) -PasswordNeverExpires $true -CannotChangePassword $true -Enabled $true

$nom = Read-Host "Merci de Rentrer le Nom et le Prénom de l’Utilisateur à Créer"

$login = Read-Host "Merci de Rentrer le Login de l’Utilisateur à Créer"

$mdp = Read-Host "Merci de Rentrer le Mot de Passe de l’Utilisateur à Créer"

New-ADUser -Name $nom -SamAccountName $login -UserPrincipalName $login@lavachette.com -AccountPassword (ConvertTo-SecureString -AsPlainText $mdp -Force) -PasswordNeverExpires $true -CannotChangePassword $true -Enabled $true

#Crée un groupe 

$groupe = Read-Host "Merci de Rentrer le Nom du Groupe à Créer"

New-ADGroup $groupe -GroupScope Global

[int] $nombre = Read-Host "Merci de Rentrer le Nombre d’Utilisateurs à Insérer dans le Groupe"

for ($i=1; $i -le $nombre; $i++)
{

    $nom = Read-Host "Merci de Rentrer le Nom de l’Utilisateur à Insérer dans le Groupe $groupe"
    Add-ADGroupMember -identity $groupe -Members $nom
    Write-Host "L’Utilisateur $nom a Bien Eté Inséré dans le Groupe $groupe."

}