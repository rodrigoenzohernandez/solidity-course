// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.15;

contract Mappings {
    mapping(uint256 => address) addresses;
    //primer parametro --> tipo de dato de la clave
    //segundo parametro --> tipo de dato del valor
    //addresses nombre del mapping


    function addItem(uint256 _key, address _add) external {
        addresses[_key] = _add;
    }

    function getItem(uint256 _key) external view returns(address){
        return addresses[_key];
    }

}
