pragma solidity ^0.4.4;

contract StoreScore{
    mapping(string => int) PersonScores;
    function AddPersonScore(string name, int startingScore){
        if(PersonScores[name]>0){
            throw;
        }
        else{
            PersonScores[name] = startingScore;
        }
    }

    function GetScore(string name) public view returns (int){
        return PersonScores[name];
    }
}