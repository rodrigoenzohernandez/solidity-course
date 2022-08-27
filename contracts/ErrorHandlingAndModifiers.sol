//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.15;

contract Testing {
    address public owner;
    uint256 public age;
    uint256 public a;
    error SoloOwner();
    error SoloMayores();

    modifier onlyOwner(){
        if(msg.sender != owner) revert SoloOwner();
        _; //cuando encuentre este placeholder va a ejecutar todo lo que esta todo lo que esta en la logica de la función
    }

    modifier checkMayor(uint256 _age){
        if(_age <=18) revert SoloMayores();
        _; 
    }

    constructor(){
        owner = msg.sender;
    }

    function setAgeWithRequire(uint256 _age) external {
        a = _age;
        //evalua, si es true continua sino no
        require(msg.sender == owner, "Solo puede setear el valor el owner del contrato");
        age = _age;
    }

    function setAgeWithRevert(uint256 _age) onlyOwner checkMayor(_age) external {
        age = _age;
    }

    function setAgeWithAssert(uint256 _age) external returns(address,address){
        assert(msg.sender == owner); //tiene que ser positiva para que continue con la ejecución y no haga el revert.
        age = _age;
    }


}