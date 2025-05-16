<#
.SYNOPSIS
Syncs local directory to AWS S3
.DESCRIPTION
.PARAMETER Bucket
  Target S3 bucket name
.PARAMETER Directory
  Local directory path
#>
param(
    [Parameter(Mandatory=$true)]
    [string]$Bucket,
    
    [Parameter(Mandatory=$true)]
    [string]$Directory
)

Write-S3Object -BucketName $Bucket -Folder $Directory -ChecksumAlgorithm SHA256