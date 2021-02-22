pragma solidity >=0.6.0 <0.8.0;

contract mappingCities {
    
        mapping(string => string) Cities;
        
       function add (string memory _city , string memory _country) public{
           Cities[_city]=_country;
       } 
       
       function get(string memory _name)public view returns(string memory){
           return Cities[_name];
       }
        
        function remove(string memory _name)public {
            
            delete(Cities[_name]);
            
        }
}