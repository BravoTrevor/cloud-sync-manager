# Cloud Sync Manager ☁️🔄

![Bash](https://img.shields.io/badge/Bash-5.2+-brightgreen?logo=gnu-bash)
![PowerShell](https://img.shields.io/badge/PowerShell-7.3+-blue?logo=powershell)
![Terraform](https://img.shields.io/badge/Terraform-1.6+-purple?logo=terraform)

A **multi-cloud synchronization tool** with:  
- **Bash/PowerShell/Python** implementations  
- **Terraform modules** for automated setup  
- **Checksum validation** for data integrity  

  ____ _                 _   _____           __  __              
 / ___| | ___  _   _  __| | / ___/__  _ __  / _|/ _| ___ _ __  
| |   | |/ _ \| | | |/ _` | \___ \ _ \| '_ \| |_| |_ / _ \ '__| 
| |___| | (_) | |_| | (_| |  ___) (_) | | | |  _|  _|  __/ |   
 \____|_|\___/ \__,_|\__,_| |____/\___/|_| |_|_| |_|  \___|_|

### 4. **Scheduled Syncs (Kubernetes)**  
Automated cloud syncs using Kubernetes CronJobs:  

| Cloud Provider | CronJob Example | Schedule |  
|----------------|-----------------|----------|  
| AWS S3 | [aws-s3-sync-job.yaml](kubernetes/examples/aws-s3-sync-job.yaml) | `*/30 * * * *` (every 30 mins) |  
| Google Storage | [gcp-storage-sync-job.yaml](kubernetes/examples/gcp-storage-sync-job.yaml) | `0 */2 * * *` (every 2 hours) |  
| Azure Blob | [azure-blob-sync-job.yaml](kubernetes/examples/azure-blob-sync-job.yaml) | `0 3 * * *` (daily at 3AM) |  

**Deploy with Helm:**  
helm install cloud-sync ./kubernetes/helm/cloud-sync \
  --set schedule="*/30 * * * *" \
  --set aws.bucket="my-bucket"
