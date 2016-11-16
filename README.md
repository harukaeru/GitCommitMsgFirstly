## Usage

- First
```sh
$ git init
$ add_post_commit_hooks
OK
```

- WorkFlow
```sh
$ set_commitmsg 'First Commit'
$ touch first.txt
$ git add first.txt
$ git_commit_from_msg
[master (root-commit) 96743d4] First Commit
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 first.txt
```

## Installation

- Install
```sh
$ make
```

- And run this command where you want to use
```sh
$ add_post_commit_hooks
```
