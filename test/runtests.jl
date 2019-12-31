using Issue34121, FileIO, ColorTypes
using Test

@testset "Issue34121" begin
    save("test.png", rand(Gray, 8, 8))
    img = load("test.png")
end
