module Paths_MyBreakfast (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch


version :: Version
version = Version {versionBranch = [0,1,0,0], versionTags = []}
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/anastasia/.cabal/bin"
libdir     = "/home/anastasia/.cabal/lib/x86_64-linux-ghc-7.8.3/MyBreakfast-0.1.0.0"
datadir    = "/home/anastasia/.cabal/share/x86_64-linux-ghc-7.8.3/MyBreakfast-0.1.0.0"
libexecdir = "/home/anastasia/.cabal/libexec"
sysconfdir = "/home/anastasia/.cabal/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "MyBreakfast_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "MyBreakfast_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "MyBreakfast_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "MyBreakfast_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "MyBreakfast_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
