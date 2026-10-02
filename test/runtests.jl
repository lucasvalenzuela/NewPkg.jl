using NewPkg
using Test
using Aqua
using JET

@testset "NewPkg.jl" begin
    @testset "Code quality (Aqua.jl)" begin
        Aqua.test_all(NewPkg)
    end
    @testset "Code linting (JET.jl)" begin
        JET.test_package(NewPkg; target_defined_modules = true)
    end
    # Write your tests here.
end
