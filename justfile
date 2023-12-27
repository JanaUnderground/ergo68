_default:
    just --list

build:
    cd qmk_firmware && qmk compile -kb yushakobo/ergo68 -km ch-miryoku-style

flash:
    cd qmk_firmware && leonardoUploader /dev/ttyACM0 .build/yushakobo_ergo68_ch-miryoku-style.hex
