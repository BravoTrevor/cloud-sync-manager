import boto3
from hashlib import sha256

def sync_aws(bucket: str, dir: str):
    s3 = boto3.client('s3')
    for root, _, files in os.walk(dir):
        for file in files:
            path = os.path.join(root, file)
            with open(path, 'rb') as f:
                checksum = sha256(f.read()).hexdigest()
            s3.upload_file(path, bucket, file, 
                          ExtraArgs={'Metadata': {'sha256': checksum}})