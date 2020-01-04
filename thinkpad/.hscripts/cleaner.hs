import System.Directory
import Data.Time.Clock
import System.Environment

main = do 
	[directory, days] <- getArgs
	setCurrentDirectory directory
	files <- listDirectory "."
	times <- mapM getModificationTime files -- list of file modification times
	ctime <- getCurrentTime -- current time
	let fileswithdiffs = zip files $ map (diffUTCTime ctime) times -- [files] -> [(file, how many seconds ago last modified)]
	mapM removeFile [f | (f,t) <- fileswithdiffs, t > (fromInteger $ (read days) * 86400) ] -- removes files that were modified more than $DAYS days ago (one day is 86400 seconds)
