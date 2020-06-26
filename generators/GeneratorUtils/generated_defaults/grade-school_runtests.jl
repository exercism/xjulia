# canonical data version: 1.0.1
# This file was generated by a script.

using Test

include("grade-school.jl")

# The following lines are top-level comments in canonical-data.json; comments within cases
# are not included. Do not include these comments in the exercise's runtests.jl.
#
# Given students' names along with the grade that they are in, 
# create a roster for the school.

@testset "Adding a student adds them to the sorted roster" begin
    @test roster(Array{Any,1}[["Aimee", 2]]) == ["Aimee"]
end

@testset "Adding more student adds them to the sorted roster" begin
    @test roster(Array{Any,1}[["Blair", 2], ["James", 2], ["Paul", 2]]) == ["Blair", "James", "Paul"]
end

@testset "Adding students to different grades adds them to the same sorted roster" begin
    @test roster(Array{Any,1}[["Chelsea", 3], ["Logan", 7]]) == ["Chelsea", "Logan"]
end

@testset "Roster returns an empty list if there are no students enrolled" begin
    @test roster([]) == []
end

@testset "Student names with grades are displayed in the same sorted roster" begin
    @test roster(Array{Any,1}[["Peter", 2], ["Anna", 1], ["Barb", 1], ["Zoe", 2], ["Alex", 2], ["Jim", 3], ["Charlie", 1]]) == ["Anna", "Barb", "Charlie", "Alex", "Peter", "Zoe", "Jim"]
end

@testset "Grade returns the students in that grade in alphabetical order" begin
    @test grade(Array{Any,1}[["Franklin", 5], ["Bradley", 5], ["Jeff", 1]], 5) == ["Bradley", "Franklin"]
end

@testset "Grade returns an empty list if there are no students in that grade" begin
    @test grade([], 1) == []
end

