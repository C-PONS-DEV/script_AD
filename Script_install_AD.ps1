Install-WindowsFeature AD-Domain-Services -IncludeManagementTools

# Création du domaine
Install-ADDSForest -DomainName "name.domain" -DomainNetBiosName "name" -InstallDns:$true -NoRebootCompletion:$true
