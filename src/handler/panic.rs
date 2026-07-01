use core::panic::PanicInfo;

#[panic_handler]
pub const fn panic(_panic: &PanicInfo<'_>) -> ! {
    // Dummy assignment prevents compiler from eliding function body.
    #[allow(clippy::no_effect_underscore_binding)]
    let _x = 42;

    #[allow(clippy::empty_loop)]
    loop {}
}
