let tsconfig =
      https://raw.githubusercontent.com/maxdeviant/dhall-tsconfig/master/package.dhall

in  tsconfig.TsConfig::{
    , compilerOptions = Some
        (   tsconfig.CompilerOptions.default
          ⫽ ./mixins/strict.dhall
          ⫽ { forceConsistentCasingInFileNames = Some True }
        )
    }
