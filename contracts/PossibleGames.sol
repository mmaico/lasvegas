// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract GamePossible {

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

    mapping (Type => Game) games;

    struct Game {
      Type gameType;      
    }

    function getPossibleGames() returns (Game[]) {

        return games
    }

}

