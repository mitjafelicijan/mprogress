# Tiny utility that displays progress bar in terminal

Displays progress bar in terminal. It can be used as a standalone program so you can put it in `/usr/bin`. The name is stupid like that because of the potential name conflicts.

## Build and usage

```sh
# Compile
make
```

```sh
# Show help
./progress -h
./progress --help
```

```sh
# Show progress bar
./progress_bar 100 200
echo 100 200 | ./progress_bar
```

## Insallation

```sh
make
[sudo] make install
```

![Usage](https://user-images.githubusercontent.com/296714/210075475-9ae14ac6-6e64-4dcf-b422-0332dfa2a69e.png)
