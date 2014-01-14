\name{Technique 1: Read in Simulation Results}
\alias{readSimResultFile}
\title{Technique 1: Read in Simulation Results}
\description{
The iDynoMiCS simulation produces a set of XML files containing simulation output, either for each individual of each species, or each solute grid, or a summary of each species type and grid, for each timestep. These files are known as agent_state, agent_sum, env_state, and env_sum files: a detailed description of each can be found in the iDynoMiCS tutorial available from iDynoMiCS.org.\cr
\cr
This method reads an XML file into R, returning this as a data frame that can then be accessed by the other methods within this package. Thus, this method is one of the key methods that you will use if you are utilising this package to analyse simulation results. This method works with all the four files specified above. \cr
\cr
Note that to use this method, you should extract the ZIP files produced by iDynoMiCS before running this method.\cr
\cr
}
\usage{
readSimResultFile(resultFolder, resultFileType, timePoint)
}
\arguments{
  \item{resultFolder}{The directory containing all the simulation results. Note that this should not be the folder extracted from the zip file, but the folder where iDynoMiCS saves the simulation responses}
  \item{resultFileType}{The output response file type to read in. This should be either agent_State, agent_Sum, env_State, or env_Sum}
  \item{timePoint}{The simulation timepoint to process}
  
}
\references{Section 5 of the iDynoMiCS tutorial explains in detail how each output file is structured}

\examples{
\dontrun{
# DONTRUN IS SET SO THIS IS NOT EXECUTED WHEN PACKAGE IS COMPILED - BUT THIS
# HAS BEEN TESTED THOROUGHLY BEFORE UPLOADING TO THE REPOSITORY

simResponse<-
readSimResultFile("/home/user/iDynoMiCS/results/","agent_State",40)
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{agent_state}
\keyword{agent_sum}
\keyword{agent_sum}
\keyword{env_sum}
\keyword{env_state}
