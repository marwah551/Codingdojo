 
 
  
pragma solidity >=0.6.0 <0.8.0;

 
contract TechInsurance {
    
    /** 
     * Define two structs
     * 
     * 
     */
    struct Product {
        uint productId;
        string productName;
        uint price;
        bool offered;
    }
     
    struct Client {
        bool isValid;
        uint time;
    }
    
    
    mapping(uint => Product) public productIndex;
    mapping(address => mapping(uint => Client)) public client;
    
    uint productCounter;
    
   // address payable insOwner;
  //  constructor(address payable _insOwner) public{
   //     insOwner = _insOwner;
//    }
 
    function addProduct(uint _productId, string memory _productName, uint _price ) public {
        Product memory newProduct=Product(_productId,_productName,_price,true);
        
        productIndex[_productId]=newProduct;
  
  
  
    }
    
    
    function changeFalse(uint _productIndex) public {
        productIndex[_productIndex].offered=false;

    }
    
    function changeTrue(uint _productIndex) public {
        productIndex[_productIndex].offered=true;

    }
    
    function changePrice(uint _productIndex, uint _price) public {
                productIndex[_productIndex].price=_price;


    }
    
    function clientSelect(uint _productIndex) public payable {
        
    } 
    
}

