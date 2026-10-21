// The reset handler, a function that is called on on CPU reset
/// # Safety
/// `#[no_mangle]` is unsafe but is required for the linker to be able to call the `Reset` handler.
#[allow(unsafe_code)]
#[no_mangle]
pub const unsafe extern "C" fn Reset() -> ! {
    //  Dummy assignment prevents compiler from eliding function body.
    #[allow(clippy::no_effect_underscore_binding)]
    let _x = 42;

    #[allow(clippy::empty_loop)]
    loop {}
}

