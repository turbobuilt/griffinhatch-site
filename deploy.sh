gsutil -m rsync -R -d -x '.git*|.gitignore|deploy.sh|CNAME|resources*|externalMockupFiles*|git.sh|.DS_Store' . gs://www.griffinhatch.com
gsutil -m setmeta -r -h "Cache-control:no-store" gs://www.griffinhatch.com
gsutil web set -m index.html gs://www.griffinhatch.com