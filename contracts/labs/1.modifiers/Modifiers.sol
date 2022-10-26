// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.15;


/*
* Modificador para que solamente pueda ejecutar la función el administrador
* _emision sería el balance inicial con el que se crea la cuenta
* _balances es un mapping que permite almacenar los distintos balances
* PRUEBA
1 Enviar un monto valido a otro address
1.1 validar que los balances tanto del address al que se envio como el del adminsitrador sean los correctos

2 intentar ejecutar la función desde otro address que no sea el administrator
2.1 debe decir que no es posible

3 enviar mas de lo permitido a la hora de crear el contrato

*/

contract Modifiers {
    uint private _emision;
    mapping (address => uint) public _balances;
    address private _administrator;

    constructor(uint emision){
        _emision = emision;
        _administrator = msg.sender;
        _balances[_administrator] = _emision;
    
    }

    modifier validateAdmin(){
        require(msg.sender == _administrator, "Usted no es administrador");
        _;
    }

    modifier validateBalance(){
        require(_balances[msg.sender] > 0, "No tiene fondos suficientes");
        _;
    }

    function enviarFondos (address addressTo, uint amount) public validateAdmin validateBalance (){
        _balances[_administrator] = _balances[_administrator] - amount;
        _balances[addressTo] = amount;
    }


/*
Agregar un modificador para que sólo el creador pueda
realizar operaciones.

2. Agregar una función “enviarFondos” que reciba como
parámetro una dirección y un monto, y que le envíe el
monto desde el balance de la cuenta creador a la
dirección indicada.
3. La función “enviarFondos” deberá ser utilizada sólo por
el creador.
4. Compilar y probar el proyecto en Remix.
*/

}
