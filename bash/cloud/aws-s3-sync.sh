#!/usr/bin/env bash
# Sync local dir to AWS S3 with checksum validation
# Usage: ./aws-s3-sync.sh -b <bucket> -d <directory>

while getopts "b:d:" opt; do
  case $opt in
    b) BUCKET=$OPTARG ;;
    d) DIR=$OPTARG ;;
    *) echo "Usage: $0 -b <bucket> -d <directory>" >&2
       exit 1 ;;
  esac
done

aws s3 sync "$DIR" "s3://$BUCKET" --checksum