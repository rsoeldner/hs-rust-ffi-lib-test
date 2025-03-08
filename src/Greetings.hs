-- This file was generated by `hs-bindgen` crate and contains C FFI bindings
-- wrappers for every Rust function annotated with `#[hs_bindgen]`

{-# LANGUAGE ForeignFunctionInterface #-}

-- Why not rather using `{-# LANGUAGE CApiFFI #-}` language extension?
--
-- * Because it's GHC specific and not part of the Haskell standard:
--   https://ghc.gitlab.haskell.org/ghc/doc/users_guide/exts/ffi.html ;
--
-- * Because the capabilities it gave (by rather works on top of symbols of a C
--   header file) can't work in our case. Maybe we want a future with an
--   {-# LANGUAGE RustApiFFI #-} language extension that would enable us to
--   work on top of a `.rs` source file (or a `.rlib`, but this is unlikely as
--   this format has purposely no public specification).

{-# OPTIONS_GHC -Wno-unused-imports #-}

module Greetings (hello) where

import Data.Int
import Data.Word
import Foreign.C.String
import Foreign.C.Types
import Foreign.Ptr

foreign import ccall safe "__c_hello" hello :: CString -> IO (())