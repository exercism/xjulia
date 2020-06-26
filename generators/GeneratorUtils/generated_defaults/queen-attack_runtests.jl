# canonical data version: 2.3.0
# This file was generated by a script.

using Test

include("queen-attack.jl")

# The following lines are top-level comments in canonical-data.json; comments within cases
# are not included. Do not include these comments in the exercise's runtests.jl.
#
# Testing invalid positions will vary by language. The expected
# value of 'error' is there to indicate some sort of failure should
# occur, while a 0 means no failure.
# Some languages implement tests beyond this set, such as checking
# for two pieces being placed on the same position, representing
# the board graphically, or using standard chess notation. Those
# tests can be offered as extra credit

@testset "Test creation of Queens with valid and invalid positions" begin
    @testset "queen with a valid position" begin
        @test create(Dict("position" => Dict("row" => 2, "column" => 2))) == 0
    end
    @testset "queen must have positive row" begin
        @test_throws ArgumentError create(Dict("position" => Dict("row" => -2, "column" => 2)))
    end
    @testset "queen must have row on board" begin
        @test_throws ArgumentError create(Dict("position" => Dict("row" => 8, "column" => 4)))
    end
    @testset "queen must have positive column" begin
        @test_throws ArgumentError create(Dict("position" => Dict("row" => 2, "column" => -2)))
    end
    @testset "queen must have column on board" begin
        @test_throws ArgumentError create(Dict("position" => Dict("row" => 4, "column" => 8)))
    end
end

@testset "Test the ability of one queen to attack another" begin
    @testset "can not attack" begin
        @test can_attack(Dict("position" => Dict("row" => 2, "column" => 4)), Dict("position" => Dict("row" => 6, "column" => 6))) == false
    end
    @testset "can attack on same row" begin
        @test can_attack(Dict("position" => Dict("row" => 2, "column" => 4)), Dict("position" => Dict("row" => 2, "column" => 6))) == true
    end
    @testset "can attack on same column" begin
        @test can_attack(Dict("position" => Dict("row" => 4, "column" => 5)), Dict("position" => Dict("row" => 2, "column" => 5))) == true
    end
    @testset "can attack on first diagonal" begin
        @test can_attack(Dict("position" => Dict("row" => 2, "column" => 2)), Dict("position" => Dict("row" => 0, "column" => 4))) == true
    end
    @testset "can attack on second diagonal" begin
        @test can_attack(Dict("position" => Dict("row" => 2, "column" => 2)), Dict("position" => Dict("row" => 3, "column" => 1))) == true
    end
    @testset "can attack on third diagonal" begin
        @test can_attack(Dict("position" => Dict("row" => 2, "column" => 2)), Dict("position" => Dict("row" => 1, "column" => 1))) == true
    end
    @testset "can attack on fourth diagonal" begin
        @test can_attack(Dict("position" => Dict("row" => 1, "column" => 7)), Dict("position" => Dict("row" => 0, "column" => 6))) == true
    end
end

