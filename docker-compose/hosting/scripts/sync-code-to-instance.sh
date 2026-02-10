# /bin/bash

rsync -avz --delete \
  -e "ssh -i ~/.ssh/my_key -o StrictHostKeyChecking=no" \
  --exclude '.venv' \
  --exclude='.git' \
  --exclude='.idea' \
  ./ root@host.ip:/home/ubuntu/projects/mysite