//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.15;

contract WhiteListening {

    //0x24116A2982BBB567d1aDC2c3AE875cF4A21f75d2 --> account 1  -- valid
    //0x7086D78Eb3f3f7b3A19dbfCa170D78cCAC785bF2 --> training   -- valid

    //0x9C9022FfAd14fB89820E51F5108449d033Db37Fd --> account3 -- invalid



    address[] public whitelist = [0x24116A2982BBB567d1aDC2c3AE875cF4A21f75d2, 0x7086D78Eb3f3f7b3A19dbfCa170D78cCAC785bF2];

    event isAllowed(string _msg);
    event isNotAllowed(string _msg);

    function validateInteraction() external{

    for (uint i; i < whitelist.length; i++){
        if(whitelist[i] == msg.sender) {
            emit isAllowed("Is allowed");
            return;
        }
    }
    emit isNotAllowed("Is not allowed");


    }


}
