pragma solidity 0.8.15;

contract Types {
    uint256[] myArray;

function addItem(uint256 _item) external{
    myArray.push(_item);
}

}