// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.15;



interface IContrato{
    //todos los contratos que implementen esta interfaz van a tener que tener la siguiente función
    function getCount() external view returns(uint256);
}

contract A is IContrato{
    uint256 public count;

    //accesible mediante herencia
    function setCount(uint256 _count) external {
        count = _count;
    }

    //no es accesible mediante herencia
    function incrementCounter() private {
        count =  count +1;
    }

    //accesible mediante herencia. internal seria lo mismo que protected en C#
    function decrementCounter() internal{
        count =  count -1;
    }

    function getCount() external view returns(uint256){
        return count;
    }


}
