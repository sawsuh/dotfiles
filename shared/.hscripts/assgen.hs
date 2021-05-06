import System.Environment
import Text.Read

data Conf = Conf { code :: String, na :: Int, nq :: Int }

maintext = do
    title <- titler
    qList <- qLister
    return $ "\\documentclass{article}\n\
        \\\title{" ++ title ++"}\n\
        \\\author{U6104703}\n\
        \\\date{}\n\
        \\\usepackage[]{amssymb} \n\
        \\\usepackage[]{mathtools} \n\
        \\\usepackage[]{enumerate} \n\
        \\\DeclarePairedDelimiter{\\norm}{\\lVert}{\\rVert}\n\
        \\\DeclarePairedDelimiter{\\ceil}{\\lceil}{\\rceil}\n\
        \\\begin{document}\n\
        \\\maketitle\n" ++ qList ++ "\n\\end{document}\n"
    where qgen n = "\n\
          \\\vspace{.3cm}\n\
          \\\textbf{Question " ++ m ++ "} \\\\ \n\
          \\\vspace{.3cm}\n\
          \\n\
          \% question " ++ m ++ "\n"
              where m = show n
          qLister = foldr1 (++) . map qgen . flip take [1..] <$> nq
          titler = (++) . (++" Assignment ") <$> code <*> fmap show na

main = do
    c:xs <- getArgs
    case map readMaybe xs of
        [Just a, Just q] -> putStr . maintext $ Conf c a q
        _ -> putStrLn "Error reading question and/or assignment number"
