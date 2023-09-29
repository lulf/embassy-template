let targets = #{
    rp2040: #{
        arch: "arm",
        toolchain: "nightly",
        rust_target: "thumbv6m-none-eabi",
        probe_chip: "RP2040"
    },

    nrf52833: #{
        arch: "arm",
        toolchain: "nightly",
        rust_target: "thumbv7em-none-eabihf",
        probe_chip: "nRF52833_xxAA"
    },

    nrf52840: #{
        arch: "arm",
        toolchain: "nightly",
        rust_target: "thumbv7em-none-eabihf",
        probe_chip: "nRF52840_xxAA"
    },

    stm32h743zi: #{
        arch: "arm",
        toolchain: "nightly",
        rust_target: "thumbv7em-none-eabihf",
        probe_chip: "STM32743ZI"
    },

    esp32c3: #{
        arch: "riscv",
        toolchain: "nightly",
        rust_target: "riscv32imc-unknown-none-elf",
        probe_chip: "esp32c3"
    },
};

let target = variable::get("chip");
let target_properties = targets.get(target);
for key in target_properties.keys() {
    variable::set(key, target_properties.get(key));
}
