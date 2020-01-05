import System.Directory
import Data.Time.Clock
import System.Environment

main = do 
	[directory, days] <- getArgs
	setCurrentDirectory directory
	files <- listDirectory "."
	times <- mapM getModificationTime files -- list of file modification times
	ctime <- getCurrentTime -- current time
	mapM_ removeFile $ filestoremove files times ctime (read days :: Integer)

filestoremove :: [FilePath] -> [UTCTime] -> UTCTime -> Integer -> [FilePath]
filestoremove files times ctime days =
	let fileswithdiffs = zip files $ map (diffUTCTime ctime) times -- [files] -> [(file, how many seconds ago last modified)]
	in [f | (f,t) <- fileswithdiffs, t > (fromInteger $ ( days ) * 86400) ]
