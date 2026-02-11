# Build device.rel

- open PlatrutmIO Core CLI
- cd lib/device
- sdcc -c device.c -mmcs51 --model-large --opt-code-speed --peep-return --fomit-frame-pointer --allow-unsafe-read
- rm *.lst
- rm *.rel
- rm *sym
- rm *.c
