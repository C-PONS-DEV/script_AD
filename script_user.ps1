# Contenu de script_user.ps1

$nom = Read-Host "Merci de Rentrer le Nom et le Prénom de l’Utilisateur à Créer"

$login = Read-Host "Merci de Rentrer le Login de l’Utilisateur à Créer"

$mdp = Read-Host "Merci de Rentrer le Mot de Passe de l’Utilisateur à Créer"

New-ADUser -Name $nom -SamAccountName $login -UserPrincipalName $login@lavachette.com -AccountPassword (ConvertTo-SecureString -AsPlainText $mdp -Force) -PasswordNeverExpires $true -CannotChangePassword $true -Enabled $true