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

    nrf54l15: #{
        arch: "arm",
        rust_target: "thumbv8m.main-none-eabihf",
        probe_chip: "nRF54L15",
        flash_start: "0x00000000",
        flash_size: "1524K",
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
        ram_size: "192K"
    },

    nrf9151: #{
        arch: "arm",
        rust_target: "thumbv8m.main-none-eabihf",
        probe_chip: "nRF9160_xxAA",
        flash_start: "0x00000000",
        flash_size: "1024K",
        ram_start: "0x20010000",
        ram_size: "192K"
    },

    rp2350: #{
        arch: "arm",
        rust_target: "thumbv8m.main-none-eabihf",
        flash_start: "0x10000000",
        flash_size: "4096K",
        ram_start: "0x20000000",
        ram_size: "512K",
        probe_chip: "RP235x"
    },

    rp2354: #{
        arch: "arm",
        rust_target: "thumbv8m.main-none-eabihf",
        flash_start: "0x10000000",
        flash_size: "2048K",
        ram_start: "0x20000000",
        ram_size: "512K",
        probe_chip: "RP235x"
    },

    esp32c3: #{
        arch: "riscv",
        rust_target: "riscv32imc-unknown-none-elf",
        probe_chip: "esp32c3"
    },

    stm32c011d6: #{
        arch: "arm",
        rust_target: "thumbv6m-none-eabi",
        flash_start: "0x08000000",
        flash_size: "32K",
        ram_start: "0x20000000",
        ram_size: "6K",
        probe_chip: "STM32C011D6"
    },

    stm32c531cb: #{
        arch: "arm",
        rust_target: "thumbv7em-none-eabihf",
        flash_start: "0x08000000",
        flash_size: "128K",
        ram_start: "0x20000000",
        ram_size: "32K",
        probe_chip: "STM32C531CB"
    },

    stm32f030c6: #{
        arch: "arm",
        rust_target: "thumbv6m-none-eabi",
        flash_start: "0x08000000",
        flash_size: "32K",
        ram_start: "0x20000000",
        ram_size: "4K",
        probe_chip: "STM32F030C6"
    },

    stm32f100c4: #{
        arch: "arm",
        rust_target: "thumbv7m-none-eabi",
        flash_start: "0x08000000",
        flash_size: "16K",
        ram_start: "0x20000000",
        ram_size: "4K",
        probe_chip: "STM32F100C4"
    },

    stm32f205rb: #{
        arch: "arm",
        rust_target: "thumbv7m-none-eabi",
        ram_start: "0x20000000",
        ram_size: "48K",
        probe_chip: "STM32F205RB"
    },

    stm32f301c6: #{
        arch: "arm",
        rust_target: "thumbv7em-none-eabihf",
        flash_start: "0x08000000",
        flash_size: "32K",
        ram_start: "0x20000000",
        ram_size: "16K",
        probe_chip: "STM32F301C6"
    },

    stm32f401cb: #{
        arch: "arm",
        rust_target: "thumbv7em-none-eabihf",
        ram_start: "0x20000000",
        ram_size: "64K",
        probe_chip: "STM32F401CB"
    },

    stm32f722ic: #{
        arch: "arm",
        rust_target: "thumbv7em-none-eabihf",
        ram_start: "0x20000000",
        ram_size: "64K",
        probe_chip: "STM32F722IC"
    },

    stm32g030c6: #{
        arch: "arm",
        rust_target: "thumbv6m-none-eabi",
        flash_start: "0x08000000",
        flash_size: "32K",
        ram_start: "0x20000000",
        ram_size: "8K",
        probe_chip: "STM32G030C6"
    },

    stm32g431c6: #{
        arch: "arm",
        rust_target: "thumbv7em-none-eabihf",
        flash_start: "0x08000000",
        flash_size: "32K",
        ram_start: "0x20000000",
        ram_size: "16K",
        probe_chip: "STM32G431C6"
    },

    stm32h503cb: #{
        arch: "arm",
        rust_target: "thumbv7em-none-eabihf",
        flash_start: "0x08000000",
        flash_size: "128K",
        ram_start: "0x20000000",
        ram_size: "16K",
        probe_chip: "STM32H503CB"
    },

    stm32h723ve: #{
        arch: "arm",
        rust_target: "thumbv7em-none-eabihf",
        flash_start: "0x08000000",
        flash_size: "512K",
        ram_start: "0x20000000",
        ram_size: "128K",
        probe_chip: "STM32H723VE"
    },

    stm32l010c6: #{
        arch: "arm",
        rust_target: "thumbv6m-none-eabi",
        flash_start: "0x08000000",
        flash_size: "32K",
        ram_start: "0x20000000",
        ram_size: "8K",
        probe_chip: "STM32L010C6"
    },

    stm32l100c6: #{
        arch: "arm",
        rust_target: "thumbv7m-none-eabi",
        flash_start: "0x08000000",
        flash_size: "32K",
        ram_start: "0x20000000",
        ram_size: "4K",
        probe_chip: "STM32L100C6"
    },

    stm32l412c8: #{
        arch: "arm",
        rust_target: "thumbv7em-none-eabihf",
        flash_start: "0x08000000",
        flash_size: "64K",
        ram_start: "0x20000000",
        ram_size: "32K",
        probe_chip: "STM32L412C8"
    },

    stm32l552cc: #{
        arch: "arm",
        rust_target: "thumbv7em-none-eabihf",
        flash_start: "0x08000000",
        flash_size: "256K",
        ram_start: "0x20000000",
        ram_size: "256K",
        probe_chip: "STM32L552CC"
    },

    stm32n645a0: #{
        arch: "arm",
        rust_target: "thumbv7em-none-eabihf",
        probe_chip: "STM32N645A0"
    },

    stm32u031c6: #{
        arch: "arm",
        rust_target: "thumbv7em-none-eabihf",
        flash_start: "0x08000000",
        flash_size: "32K",
        ram_start: "0x20000000",
        ram_size: "12K",
        probe_chip: "STM32U031C6"
    },

    stm32u375ce: #{
        arch: "arm",
        rust_target: "thumbv7em-none-eabihf",
        flash_start: "0x08000000",
        flash_size: "512K",
        ram_start: "0x20000000",
        ram_size: "192K",
        probe_chip: "STM32U375CE"
    },

    stm32u535cb: #{
        arch: "arm",
        rust_target: "thumbv7em-none-eabihf",
        flash_start: "0x08000000",
        flash_size: "128K",
        ram_start: "0x20000000",
        ram_size: "192K",
        probe_chip: "STM32U535CB"
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

// Get target properties, or use default STM32 config if not found
let target_properties = if targets.contains(target) {
    targets.get(target)
} else if target.starts_with("stm32") {
    // Default STM32 config - memory layout will be overridden by stm32-metapac at build time
    let chip_upper = target.to_upper();
    let rust_target = if chip_upper.starts_with("STM32F0") || chip_upper.starts_with("STM32G0") || chip_upper.starts_with("STM32C0") || chip_upper.starts_with("STM32L0") {
        "thumbv6m-none-eabi"
    } else if chip_upper.starts_with("STM32F1") || chip_upper.starts_with("STM32F2") || chip_upper.starts_with("STM32L1") {
        "thumbv7m-none-eabi"
    } else {
        "thumbv7em-none-eabihf"
    };
    
    #{
        arch: "arm",
        rust_target: rust_target,
        flash_start: "0x08000000",
        flash_size: "1024K",
        ram_start: "0x20000000",
        ram_size: "128K",
        probe_chip: chip_upper
    }
} else {
    throw `Unknown chip: ${target}`;
};

for key in target_properties.keys() {
    variable::set(key, target_properties.get(key));
}