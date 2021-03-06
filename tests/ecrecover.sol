pragma solidity ^0.4.15;

contract Example {
    function testRecovery(bytes32 h, uint8 v, bytes32 r, bytes32 s) returns (address) {
        //bytes memory prefix =  "\x19Ethereum Signed Message:\n32";
        bytes memory prefix =  "\x15Qtum Signed Message:\n";
        bytes32 prefixedHash = sha3(prefix, h);
        address addr = ecrecover(prefixedHash, v, r, s);
        return addr;
        //return sha256();
        //return h;
        //return prefixedHash;
    }
}