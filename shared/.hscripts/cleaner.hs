import System.Directory
import Data.Time.Clock
import System.Environment

main = do 
	fileremover "/home/prash/Downloads" 1

-- removes files from a directory given a number of days using helper function filestoremove to filter list of files to which files to remove
fileremover :: String -> Integer -> IO ()
fileremover directory days = do
	setCurrentDirectory directory -- goes to directory
	files <- listDirectory "." -- list of files
	times <- mapM getModificationTime files -- list of file modification times
	ctime <- getCurrentTime -- current time
	mapM_ ( \x -> do
		putStrLn $ "removed " ++ x -- output the name 
		removePathForcibly x -- remove 
		) $ filestoremove files times ctime days -- removes files using helper function

-- works out what files to remove by getting the ones that were modified more than a given number of seconds/days ago (86400 seconds in a day) 
filestoremove :: [FilePath] -> [UTCTime] -> UTCTime -> Integer -> [FilePath]
filestoremove files times ctime days =
	let fileswithdiffs = zip files $ map (diffUTCTime ctime) times -- [files] -> [(file, how many seconds ago last modified)]
	in [f | (f,t) <- fileswithdiffs, t > (fromInteger $ ( days ) * 86400) ] -- [(files, how many seconds ago last modified)] -> [files] filtered by last modified at least n days or 86400 * n seconds ago
