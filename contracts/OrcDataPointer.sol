pragma solidity ^0.4.11;

contract OrcDataPointer {
    
    address owner;
    bytes32 pointer;

    modifier onlyOwner() {
        if (msg.sender != owner) throw;
        _;
    }

    /// Create ownership of this pointer to data.
    function OrcDataPointer() {
        owner = msg.sender;
    }

    /// resets the pointer.
    function removePointer(address to) onlyOwner {
        pointer = 0x0;
    }

    /// Update the given pointer to a new state of the data.
    function updatePointer(bytes32 _pointer) onlyOwner{
        pointer = _pointer;
    }
}