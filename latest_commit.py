from github import Github
access_token="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"
g=Github(access_token)
# if g:
#     print("Connection successful")
# else:
#     print("Connection not happened")
repo=g.get_repo("ssptr007/AwesomePython")
latest_commit=repo.get_commits()[0]
print(f"The latest commit is :{latest_commit.sha}")
with open("latest_commit.txt","w") as file:
 file.write(str(latest_commit.sha))
