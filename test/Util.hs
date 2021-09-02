module Util where

import Data.Typeable
import Control.Exception.Safe

data NotImplementedYet = NotImplementedYet deriving (Typeable)
instance Exception NotImplementedYet
instance Show NotImplementedYet where
    show _ = "#FUNCTION_NOT_IMPLEMENTED#"

notImplementedYet :: a
notImplementedYet = impureThrow NotImplementedYet
