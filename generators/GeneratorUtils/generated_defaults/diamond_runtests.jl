# canonical data version: 1.1.0
# This file was generated by a script.

using Test

include("diamond.jl")

# The following lines are top-level comments in canonical-data.json; comments within cases
# are not included. Do not include these comments in the exercise's runtests.jl.
#
#  The tests contained within this canonical data file are suitable   
#  for value-based testing, in which each test case checks that the   
#  value returned by the function under test is in every way          
#  identical to a given expected value.                               
#                                                                     
#  This exercise is also amenable to property-based testing, in which 
#  each test case verifies that the value returned by the function    
#  under test exhibits a specific desired property.                   
#                                                                     
#  Several tracks (notably, C# and Go) forgo the value-based tests    
#  below in favor of property-based tests. If you are feeling         
#  adventurous and would like to use this exercise to introduce the   
#  concept of property-based testing to participants in your track,   
#  please ignore the value-based tests below and instead reference    
#  the test suites in the aforementioned tracks.                      

@testset "Degenerate case with a single 'A' row" begin
    @test rows("A") == ["A"]
end

@testset "Degenerate case with no row containing 3 distinct groups of spaces" begin
    @test rows("B") == [" A ", "B B", " A "]
end

@testset "Smallest non-degenerate case with odd diamond side length" begin
    @test rows("C") == ["  A  ", " B B ", "C   C", " B B ", "  A  "]
end

@testset "Smallest non-degenerate case with even diamond side length" begin
    @test rows("D") == ["   A   ", "  B B  ", " C   C ", "D     D", " C   C ", "  B B  ", "   A   "]
end

@testset "Largest possible diamond" begin
    @test rows("Z") == ["                         A                         ", "                        B B                        ", "                       C   C                       ", "                      D     D                      ", "                     E       E                     ", "                    F         F                    ", "                   G           G                   ", "                  H             H                  ", "                 I               I                 ", "                J                 J                ", "               K                   K               ", "              L                     L              ", "             M                       M             ", "            N                         N            ", "           O                           O           ", "          P                             P          ", "         Q                               Q         ", "        R                                 R        ", "       S                                   S       ", "      T                                     T      ", "     U                                       U     ", "    V                                         V    ", "   W                                           W   ", "  X                                             X  ", " Y                                               Y ", "Z                                                 Z", " Y                                               Y ", "  X                                             X  ", "   W                                           W   ", "    V                                         V    ", "     U                                       U     ", "      T                                     T      ", "       S                                   S       ", "        R                                 R        ", "         Q                               Q         ", "          P                             P          ", "           O                           O           ", "            N                         N            ", "             M                       M             ", "              L                     L              ", "               K                   K               ", "                J                 J                ", "                 I               I                 ", "                  H             H                  ", "                   G           G                   ", "                    F         F                    ", "                     E       E                     ", "                      D     D                      ", "                       C   C                       ", "                        B B                        ", "                         A                         "]
end

