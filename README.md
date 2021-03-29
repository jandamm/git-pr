# git-pr
A collection of scripts to work with prs from the commandline.

## Configuration

### Jira prefix

Adds the jira ticket number to the pr branch name.
To match tickets named `ABS1234` execute the following command.

```
git config --add git-pr.jira.prefix 'ABC'
```

### Reviewer (bitbucket)

Automatically assign a new pr to another user.

```
git config --add git-pr.reviewer 'username'
```
