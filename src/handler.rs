// The reset vector, a pointer to the reset handler
/// # Safety
/// `#[no_mangle]` is unsafe but is required for the linker to be able to access the `Reset` vector.
#[allow(unsafe_code)]
#[link_section = ".vector_table.reset_vector"]
#[no_mangle]
pub static RESET_VECTOR: unsafe extern "C" fn() -> ! = Reset;

