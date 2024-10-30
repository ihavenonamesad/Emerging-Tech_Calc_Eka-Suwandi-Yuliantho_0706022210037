// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.26 and less than 0.9.0
pragma solidity ^0.8.26;

contract Calculator {
    int public initialNumber = 14;

    function add(int _number1, int _number2) public pure returns (int) {
        return _number1 + _number2;
    }

    function divide(int _number1, int _number2) public pure returns (int) {
        return _number1 / _number2;
    }

     function minus(int _number1, int _number2) public pure returns (int) {
        return _number1 - _number2;
    }

    function times(int _number1, int _number2) public pure returns (int) {
        return _number1 * _number2;
    }

     function power(int _number1,int _number2) public pure returns (int) {
        int result = 1;
        for (int i = 0; i < _number2; i++) {
            result = result * _number1;
        }
        return result;
    } 


    function root(int _number1, int _number2) public pure returns (int) {
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

        return result - 1;
    }

     function modul(int _number1, int _number2) public pure returns (int) {
        require(_number2 > 0, "stupid?");
        return _number1 % _number2;
    }

    function factorial(int _number1) public pure returns (int) {
        require(_number1 > 0, "stupid?");
         int result = 1;
        for (int i = 1; i <= _number1; i++) {
            result = i * result;
        }
        return result;
    }
}