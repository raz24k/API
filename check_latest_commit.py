import json
import urllib.request
from datetime import datetime

def get_latest_commit_date(repo_url):
    try:
        with urllib.request.urlopen(repo_url) as response:
            commits = json.loads(response.read().decode())
            latest_commit_date_str = commits[0]['commit']['committer']['date']
            latest_commit_date = datetime.strptime(latest_commit_date_str, '%Y-%m-%dT%H:%M:%SZ')
            return latest_commit_date
    except Exception as e:
        print(f"Error fetching commit date: {e}")
        return datetime.min

# Define repository URLs
repositories = {
    "frontend": "https://api.github.com/repos/TharunDD/UI/commits",
    "backend": "https://api.github.com/repos/TharunDD/API/commits"
}

# Determine the most recently updated repository
latest_repo_name = None
latest_commit_date = datetime.min

for repo_name, repo_url in repositories.items():
    commit_date = get_latest_commit_date(repo_url)
    if commit_date > latest_commit_date:
        latest_commit_date = commit_date
        latest_repo_name = repo_name

print(f"Latest updated repository: {latest_repo_name}")

# Write the result to a file
with open('out.txt', 'w') as f:
    f.write(latest_repo_name)
