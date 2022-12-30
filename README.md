# Tiny utility that displays progress bar in terminal

Displays progress bar in terminal. It can be used as a standalone program so you can put it in `/usr/bin`. The name is stupid like that because of the potential name conflicts.

## Compilation and usage

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
[sudo] make install
```

![Usage](https://user-images.githubusercontent.com/296714/210076971-b59ec52b-26ef-4b8c-b569-b863fec3af1a.png)
