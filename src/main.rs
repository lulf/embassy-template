#![no_std]
#![no_main]

use embassy_executor::Spawner;
use embassy_time::{Duration, Timer};
use {defmt_rtt as _, panic_probe as _};

#[embassy_executor::main]
async fn main(_spawner: Spawner) -> ! {
    {% if chip contains "nrf" -%}
    let _periphs = embassy_nrf::init(Default::default());
    {% endif -%}

    {% if chip contains "stm32" -%}
    let _periphs = embassy_stm32::init(Default::default());
    {% endif -%}

    {% if chip contains "rp2040" -%}
    let _periphs = embassy_rp::init(Default::default());
    {% endif -%}

    loop {
        defmt::info!("Blink");
        Timer::after(Duration::from_millis(100)).await;
    }
}
