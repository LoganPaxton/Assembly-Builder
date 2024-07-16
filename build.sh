#!/bin/bash

###################
#  START CONFIG   #
###################

ENTRY_POINT="main" # Do not put the file extension!
VERBOSE=true # Prints status messages during the building of your assembly code.

###################
#   END CONFIG    #
###################

# WARNING: Do NOT configure beyond this point unless you know what you are doing!

print () {
  if [ "$VERBOSE" = true ]; then
    echo "./build.sh: $1"
  fi
}

print "Cleaning up file system..."
rm -f "${ENTRY_POINT}.o" "${ENTRY_POINT}"

print "Creating object file..."
nasm -f elf64 "${ENTRY_POINT}.asm" -o "${ENTRY_POINT}.o"

print "Converting object file to binary..."
ld -m elf_x86_64 "${ENTRY_POINT}.o" -o "${ENTRY_POINT}"

if [ $? -eq 0 ]; then
    print "Removing object file..."
    rm -f "${ENTRY_POINT}.o"
    
    print "Running binary file!"
    echo 
    ./"${ENTRY_POINT}"
else
    echo "Error: Compilation failed."
fi
