# canonical data version: 1.1.0
# This file was generated by a script.

using Test

include("hello-world.jl")

@testset "Say Hi!" begin
    @test hello() == "Hello, World!"
end

