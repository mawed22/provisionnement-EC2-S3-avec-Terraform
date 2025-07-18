Ce projet Terraform déploie :

- Une instance EC2 (Ubuntu 20.04) avec un script de démarrage pour installer Nginx
- Un bucket S3 privé nommé `TP-S3-2024`

Déploiement simple d'infrastructure sur AWS en utilisant une infrastructure as Code avec Terraform.

---

## Fichiers principaux du projet

| Fichier        | Rôle                                                  |
|----------------|--------------------------------------------------------|
| `main.tf`      | Définit les ressources EC2 et S3                       |
| `variables.tf` | Contient les variables configurables                   |
| `outputs.tf`   | Affiche l'IP publique de l'EC2 et l'ID du bucket S3    |
| `startup.sh`   | Script Bash exécuté automatiquement sur l’EC2         |

---

## Tester le déploiement

1. Initialise Terraform :
   ```bash
   terraform init

2. Planifie :
   ```bash
   terraform plan

3. Applique :
   ```bash
   terraform apply

4. Visite l’IP publique affichée à la fin pour voir Nginx :
   ```bash
   http://<public_ip>

5. Supprimer les ressources  :
   ```bash
   terraform destroy
