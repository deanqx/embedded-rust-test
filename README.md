# Requirements

```
make deps
```

# Build and Upload

Find USB port of programmer:

```
dmesg | grep tty
```

Set USB port for ravedude:

```
export RAVEDUDE_PORT=/dev/ttyUSB0
```

```
cargo build
cargo run
```
