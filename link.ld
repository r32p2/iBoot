OUTPUT_FORMAT(elf32-i386);
OUTPUT_ARCH(i386);

SECTIONS
{
    . = 0x7C00;

    .boot : AT(0x7C00) SUBALIGN(2)
    {
        boot/entry.o(.boot);
        boot/entry.o(.*);
    }

    . = 0x7DFE;

    .sig :
    {
        SHORT(0xAA55);
    }

    /DISCARD/ :
    {
        *(.eh_frame);
        *(.comment);
    }
}