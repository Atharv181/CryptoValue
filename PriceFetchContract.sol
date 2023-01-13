//SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract PriceFetch{
    AggregatorV3Interface internal priceOfEthereum;
    AggregatorV3Interface internal priceOfBTC;

    constructor(){
        priceOfBTC = AggregatorV3Interface(0xA39434A63A52E749F02807ae27335515BA4b07F7);
        priceOfEthereum = AggregatorV3Interface(0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e);
    }

    function getLatestPriceOfETH() public view returns(int){
        (,int price,,,) = priceOfEthereum.latestRoundData();

        return price;
    }

    function getLatestPriceOfBTC() public view returns(int){
        (,int price,,,) = priceOfBTC.latestRoundData();


        return price;
    }

}