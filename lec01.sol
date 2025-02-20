// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract lecture01 {



//     function add(int a, int b)public pure returns(int ) {
//         return a+b;
//     }

//      function sub(int a, int b)public pure returns(int ) {
//         return a-b;
//     }

//      function mul(int a, int b)public pure returns(int ) {
//         return a*b;
//     }

//      function div(int a, int b)public pure returns(int ) {
//         return a/b;
//     }

    // int public a;
    // function inc() public  returns(int){
    //     return a++;
    // }
    // function dec() public returns(int){
    //     return a--;
    // }

    // bool public check=true;
    // function change() public  returns(bool){
    //     if(check==true){
    //         check=false;
    //     }else {check=true;}

    // return check;
    // }
    // string public message;
    // function oddeven(int a) public returns (string memory){
    //     if(a%2==0){
    //         message="Even";
    //     }else {
    //         message="Odd";
    //         }

    //     return message;
    // }
    // string newstring;

    // function concat(string memory a, string memory b) public pure returns(string memory){
    //     return string(abi.encodePacked(a," ",b));
    // }


    // function oddeven(int a) public pure returns (string memory){
    //     require(a%2==0,"number is odd");
    //     return "number is even";
    // }

    function name() public view returns (address){
        return msg.sender;
    }

}


