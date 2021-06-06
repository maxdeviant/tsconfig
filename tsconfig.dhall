let tsconfig = ./dhall-tsconfig.dhall

in  tsconfig.TsConfig::{
    , compilerOptions = Some
        (   tsconfig.CompilerOptions.default
          ⫽ ./mixins/strict.dhall
          ⫽ { forceConsistentCasingInFileNames = Some True }
        )
    }
