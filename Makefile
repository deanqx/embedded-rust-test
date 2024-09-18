SRC_DIR = src
UPLOAD_TARGET = build/avr-atmega328/debug/embedded-rust-test.elf

port ?= /dev/ttyUSB0

all: upload

deps:
	sudo apt install -y avr-libc avrdude binutils-avr gcc-avr libudev-dev

asm:
	avr-objdump -d $(UPLOAD_TARGET) > src/embedded-rust-test.asm

# cargo run is prefered
upload:
	avrdude -c arduino -p m328 -P $(port) -b 115200 -U flash:w:$(UPLOAD_TARGET)

.PHONY: deps upload
