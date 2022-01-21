mod drivers;

use std::io::stderr;
use drivers::lora;

fn main() {
    lora::init(stderr());
    println!("Hello, world!");
}
