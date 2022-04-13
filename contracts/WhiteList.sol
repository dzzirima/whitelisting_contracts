pragma solidity ^0.8.1;

contract WhiteList{
    uint8 public maxWhiteListedAddress;

    //creating a list mapping of all whitelisted addresses

    mapping (address => bool) public whiteListedAddresses;


    //keeping track of the total number of all the users that have been white listed
    uint8 public numAddressesWhiteListed;

    ///during deployment the user will set the maximum numbe of whitelisted addresses
    constructor(uint8 _maxWhiteListedAddress){
        maxWhiteListedAddress = _maxWhiteListedAddress;
    }


    /**function to add the address to the list of whitelist */

    function addAddressToWhitelist() public {
        //check if the user has already been whitelisted

        require(!whiteListedAddresses[msg.sender],"sender has already been whitelisted");

        //check if the current whitelisted people is not greater than the max whitelisted people

        require(numAddressesWhiteListed < maxWhiteListedAddress , "Whitelist already full , cant add more");

        //add  the address of the sender to the white list
        whiteListedAddresses[msg.sender] =true;

        //increase the number of WhiteListed address
        numAddressesWhiteListed += 1;
    }
}