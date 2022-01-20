use std::io::Write;

pub mod lora {
    use std::io::prelude::*;
    use std::error::Error;
    
    pub fn init(log: Option<&mut dyn Write>) -> Result<Error> {
        if let log = Some(log) {
            log.write("Trying lora initialization");
            log.flush();
        }
    }

    pub fn send(data: &[u8]) -> Result<Error> {

    }

    pub fn recv() -> Option<[u8]> {

    }

    pub fn close() -> Result<Error> {

    }
}
