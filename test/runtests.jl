using Issue34121, TestImages
using Test

@show Base.Sys.CPU_THREADS
@show Base.ENV

@testset "Issue34121" begin
    img = testimage("cameraman")
end
