// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.26 and less than 0.9.0
pragma solidity ^0.8.26;

contract Calculator {
    int public initialNumber = 14;
    int public lastResult;

    function add(int _number1, int _number2) public returns (int) {
        lastResult = _number1 + _number2;
        return lastResult;
    }

    function divide(int _number1, int _number2) public returns (int) {
        lastResult = _number1 / _number2;
        return lastResult;
    }

     function minus(int _number1, int _number2) public returns (int) {
        lastResult = _number1 - _number2;
        return lastResult;
    }

    function times(int _number1, int _number2) public  returns (int) {
        lastResult = _number1 * _number2;
        return lastResult;
    }

     function power(int _number1,int _number2) public  returns (int) {
        int result = _number1;
        for (int i = 1; i < _number2; i++) {
            result = result * _number1;
        }
        lastResult = result;
        return lastResult;
    } 


    function root(int _number1, int _number2) public returns (int) {
        require(_number1 >= 0 && _number2 > 1, "stupid?");
        int result = 1;
        while (true) {
            int powerValue = 1;
            for (int i = 0; i < _number2; i++) {
                powerValue *= result;
                if (powerValue > _number1) break; 
            }
            if (powerValue > _number1) break; 
            result++;
        }
        lastResult = result-1;
        return lastResult;
    }

     function modul(int _number1, int _number2) public returns (int) {
        require(_number2 > 0, "stupid?");
        lastResult = _number1 % _number2;
        return lastResult;
    }

    function factorial(int _number1) public  returns (int) {
        require(_number1 > 0, "stupid?");
         int result = 1;
        for (int i = 1; i <= _number1; i++) {
            result = i * result;
        }
        lastResult = result;
        return lastResult;
    }
     function clear() public {
        lastResult = 0;
    }
}