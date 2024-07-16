# Assembly-Builder
Made for ease of use.

> [!NOTE]
> This will NOT be updated as most assembly coding is out-of-date (We have Rust, and C now 🙂)
## Installation / Setup
To install, run this command `git clone https://github.com/LoganPaxton/Assembly-Builder.git`  
  
To setup, run this command.
`cd Assembly-Builder && chmod +x build.sh`
> [!WARNING]
> If you do not run `chmod` you cannot execute the builder!

## Usage
Once you have setup the builder, you can configure it. 
Here's how you can configure it:  
`ENTRY_POINT="main"` You can change main to any filename  
Examples:  
`ENTRY_POINT="main.asm` ❌  
`ENTRY_POINT="test"` ✅  
You can also change the verbose option:  
`VERBOSE=true` You can set it to false, it just prints everything it does to the terminal.

