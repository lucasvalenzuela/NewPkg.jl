using NewPkg
using Documenter

DocMeta.setdocmeta!(NewPkg, :DocTestSetup, :(using NewPkg); recursive=true)

makedocs(;
    modules=[NewPkg],
    authors="Lucas Valenzuela",
    sitename="NewPkg.jl",
    format=Documenter.HTML(;
        canonical="https://lucasvalenzuela.github.io/NewPkg.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/lucasvalenzuela/NewPkg.jl",
    devbranch="main",
)
