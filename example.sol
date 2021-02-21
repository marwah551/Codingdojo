pragma solidity >=0.6.0 <0.8.0;

contract Math{
    function isMultiple(uint8 _n, uint8 _m) public pure returns(bool) {
        if (_m!=0 && _n%_m ==0){
            return true;
        }
        else
        {
            return false;
        }
        // Write your code here
    
    }
    
    function max(uint256 _n, uint256 _m) public pure returns(uint256) {
        // Write your code here   
        
    if (_n>_m){
        return _n; 
    }
    else {
        return _m; 
    }
    
    }

}