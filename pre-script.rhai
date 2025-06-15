let targets = #{
    rp2040: #{
        arch: "arm",
        rust_target: "thumbv6m-none-eabi",
	flash_start: "0x10000100",
        flash_size: "2048K - 0x100",
        ram_start: "0x20000000",
        ram_size: "264K",
        probe_chip: "RP2040"
    },

    nrf52833: #{
        arch: "arm",
        rust_target: "thumbv7em-none-eabihf",
        probe_chip: "nRF52833_xxAA",
	flash_start: "0x00000000",
        flash_size: "512K",
        ram_start: "0x20000000",
        ram_size: "128K"
    },

    nrf52840: #{
        arch: "arm",
        rust_target: "thumbv7em-none-eabihf",
        probe_chip: "nRF52840_xxAA",
	flash_start: "0x00000000",
        flash_size: "1024K",
        ram_start: "0x20000000",
        ram_size: "256K"
    },

    nrf9160: #{
        arch: "arm",
        rust_target: "thumbv8m.main-none-eabihf",
        probe_chip: "nRF9160_xxAA",
    flash_start: "0x00000000",
        flash_size: "1024K",
        ram_start: "0x20010000",
        ram_size: "192K",
    },
    
    nrf9151: #{
        arch: "arm",
        rust_target: "thumbv8m.main-none-eabihf",
        probe_chip: "nRF9160_xxAA",
    flash_start: "0x00000000",
        flash_size: "1024K",
        ram_start: "0x20010000",
        ram_size: "192K",
    },

    rp2350: #{
        arch: "arm",
        rust_target: "thumbv8m.main-none-eabihf",
        flash_start: "0x10000100",
        flash_size: "4096K - 0x100",
        ram_start: "0x20000000",
        ram_size: "520K",
        probe_chip: "RP235x"
    },

    rp2354: #{
        arch: "arm",
        rust_target: "thumbv8m.main-none-eabihf",
        flash_start: "0x10000100",
        flash_size: "2048K - 0x100",
        ram_start: "0x20000000",
        ram_size: "520K",
        probe_chip: "RP235x"
    },

    stm32h743zi: #{
        arch: "arm",
        rust_target: "thumbv7em-none-eabihf",
        flash_start: "0x08000000",
        flash_size: "2048K",
        ram_start: "0x20000000",
        ram_size: "128K",
        probe_chip: "STM32743ZI"
    },

    esp32c3: #{
        arch: "riscv",
        rust_target: "riscv32imc-unknown-none-elf",
        probe_chip: "esp32c3"
    },
};

let target = variable::get("chip");

// Collapse RP235x `chip` variants to either:
//     "rp2350" (typically Pico 2 (w/4MB external flash)) or
//     "rp2354" (w/2MB on-die flash)
let valid_rp2350_variants = ["rp2350a", "rp2350b"];
let valid_rp2354_variants = ["rp2354a", "rp2354b"];

if valid_rp2350_variants.contains(target) {
    target = "rp2350";
} else if valid_rp2354_variants.contains(target) {
    target = "rp2354";
}

let target_properties = targets.get(target);
for key in target_properties.keys() {
    variable::set(key, target_properties.get(key));
}
