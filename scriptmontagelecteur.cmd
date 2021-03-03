net use U: \\nomduserveur\persouser
net use V: \\serveur2k3\partagecommun

New-SmbShare -Name NomDuPartage -Path "U:\\nomduserveur\persouser" -FullAccess "Tout le monde"
New-SmbShare -Name NomDuPartage -Path "V:\\serveur2k3\partagecommun" -FullAccess "Tout le monde"
