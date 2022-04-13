const  {ethers} = require("hardhat");


async function main(){


    const whiteList = await ethers.getContractFactory("WhiteList");

    //deploy the contract to the network
    // deploying with 10 accounts
    
    const whiteListContract  = await whiteList.deploy(10)


    //print the address of the nft 
    console.log("WhiteList contract Address ", whiteListContract.address)

}
try {
    main()
} catch (error) {
    console.log(error)
    process.exit(1)
    
}