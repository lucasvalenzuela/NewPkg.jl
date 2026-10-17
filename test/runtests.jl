using NewPkg
using Test
using Aqua
using ExplicitImports
using JET

@testset "NewPkg.jl" begin
    @testset "Code quality (Aqua.jl)" begin
        Aqua.test_all(NewPkg)
    end
    @testset "Imports (ExplicitImports.jl)" begin
        @test check_no_stale_explicit_imports(NewPkg) === nothing
        @test check_no_self_qualified_accesses(NewPkg) === nothing
    end
    if JET.JET_AVAILABLE
        @testset "Code linting (JET.jl)" begin
            JET.test_package(NewPkg; target_modules=(NewPkg,))
        end
    end
    # Write your tests here.
end
