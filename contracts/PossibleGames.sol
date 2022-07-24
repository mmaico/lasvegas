// SPDX-License-Identifier: MIT

pragma solidity 0.8.15 <0.9.0;

import "hardhat/console.sol";


    enum Type {
        Grupo,
        DuqueDeGrupo,
        PasseVaiVem,
        Dezena,
        PasseVai,
        TernoDeGrupo,
        DuqueDeDezena,
        Centena,
        Milhar1A5,
        TernoSecoNaCabeca,
        MilharASeco
    }

    enum Strategy {
        InTheHead,
        fromOneToFive
    }

    struct Game {
        Type typeGame;
    }

interface IGame {
    function isValid(string[] memory params, Strategy strategy) external returns (bool);
}

contract Grupo is IGame {

    function isValid(string[] memory params, Strategy strategy) public returns (bool) {
        console.log(params.length);

        require(params.length == 1, "One animal is required to this game");
        require(uint8(strategy) < 2, "Invalid strategy");
        return true;
    }

}

contract PossibleGames {

    Game[] games;

    constructor() {
        games.push(Game(Type.Grupo));
        games.push(Game(Type.DuqueDeGrupo));
        games.push(Game(Type.PasseVaiVem));
        games.push(Game(Type.Dezena));
        games.push(Game(Type.PasseVai));
        games.push(Game(Type.TernoDeGrupo));
        games.push(Game(Type.DuqueDeDezena));
        games.push(Game(Type.Centena));
        games.push(Game(Type.Milhar1A5));
        games.push(Game(Type.TernoSecoNaCabeca));
        games.push(Game(Type.MilharASeco));

        console.log("###################################################");
    }

    function getAllGames() public view returns(Game[] memory) {
        console.log("##################### GetAllGames ##############################");
        return games;
    }
}