{-# LANGUAGE OverloadedStrings #-}

module Main where

import           Control.Monad
import           Control.Monad.IO.Class
import           Data.Default
import           Data.Text (Text)
import qualified Data.Text as T
import           Reflex.Dom

main = mainWidget $ el "div" $ do
  t <- textInput def
  dynText $ _textInput_value t
