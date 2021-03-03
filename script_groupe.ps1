# Contenu de script_groupe.ps1

$groupe = Read-Host "Merci de Rentrer le Nom du Groupe à Créer"

New-ADGroup $groupe -GroupScope Global

[int] $nombre = Read-Host "Merci de Rentrer le Nombre d’Utilisateurs à Insérer dans le Groupe"

for ($i=1; $i -le $nombre; $i++)
{

    $nom = Read-Host "Merci de Rentrer le Nom de l’Utilisateur à Insérer dans le Groupe $groupe"
    Add-ADGroupMember -identity $groupe -Members $nom
    Write-Host "L’Utilisateur $nom a Bien Eté Inséré dans le Groupe $groupe."

}