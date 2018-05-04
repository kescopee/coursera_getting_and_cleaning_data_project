# Code Book for the Getting & Cleaning Data Course Project

This is a summary of processed tidy data set stored as `tidy_data.txt`

## Identifiers
- `subject` : corresponding ID for the test subject. The ID ranges from 1 to 30
- `activity`: type of activity for a particular/corresponding measurement 
    - `SITING` if the subject was sitting
    - `LAYING` if the subject was laying
    - `STANDING` if the subject was standing
    - `WALKING` if the subject was walking
    - `WALKING_UPSTARS` if the subject was ascending up the stairs
    - `WALKING_DOWNSTAIRS` if the subject was descending down the stairs
    
Please note that all measurements are floating-point values, normalised and bounded within [-1,1]

## All measurements can be grouped into 2 domains:
    ### Frequency domain (prefixed by `frequencyDomain`)
    - `frequencyDomainBodyAccelerometerMeanX`
	- `frequencyDomainBodyAccelerometerMeanY`
	- `frequencyDomainBodyAccelerometerMeanZ`
    - `frequencyDomainBodyAccelerometerJerkMeanX`
	- `frequencyDomainBodyAccelerometerJerkMeanY`
	- `frequencyDomainBodyAccelerometerJerkMeanZ`
    - `frequencyDomainBodyAccelerometerMeanFrequencyX`
	- `frequencyDomainBodyAccelerometerMeanFrequencyY`
	- `frequencyDomainBodyAccelerometerMeanFrequencyZ`
    - `frequencyDomainBodyAccelerometerStandardDeviationX`
	- `frequencyDomainBodyAccelerometerStandardDeviationY`
	- `frequencyDomainBodyAccelerometerStandardDeviationZ`
	- `frequencyDomainBodyAccelerometerJerkStandardDeviationX`
	- `frequencyDomainBodyAccelerometerJerkStandardDeviationY`
	- `frequencyDomainBodyAccelerometerJerkStandardDeviationZ`
    - `frequencyDomainBodyAccelerometerJerkMeanFrequencyX`
	- `frequencyDomainBodyAccelerometerJerkMeanFrequencyY`
	- `frequencyDomainBodyAccelerometerJerkMeanFrequencyZ`
    - `frequencyDomainBodyGyroscopeMeanX`
	- `frequencyDomainBodyGyroscopeMeanY`
	- `frequencyDomainBodyGyroscopeMeanZ`
    - `frequencyDomainBodyGyroscopeStandardDeviationX`
	- `frequencyDomainBodyGyroscopeStandardDeviationY`
	- `frequencyDomainBodyGyroscopeStandardDeviationZ`
    - `frequencyDomainBodyGyroscopeJerkMagnitudeMean`
	- `frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation`
	- `frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency`
    - `frequencyDomainBodyGyroscopeMagnitudeMean`
	- `frequencyDomainBodyGyroscopeMagnitudeStandardDeviation`
	- `frequencyDomainBodyGyroscopeMagnitudeMeanFrequency`
    - `frequencyDomainBodyAccelerometerJerkMagnitudeMean`
	- `frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation`
	- `frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency`
	- `frequencyDomainBodyAccelerometerMagnitudeMean`
	- `frequencyDomainBodyAccelerometerMagnitudeStandardDeviation`
	- `frequencyDomainBodyAccelerometerMagnitudeMeanFrequency`

    ### Time domain (prefixed by `timeDomain`)
    - `timeDomainBodyAccelerometerMeanX`
	- `timeDomainBodyAccelerometerMeanY`
	- `timeDomainBodyAccelerometerMeanZ`
    - `timeDomainGravityAccelerometerMeanX`
	- `timeDomainGravityAccelerometerMeanY`
	- `timeDomainGravityAccelerometerMeanZ`
    - `timeDomainBodyAccelerometerJerkMeanX`
	- `timeDomainBodyAccelerometerJerkMeanY`
	- `timeDomainBodyAccelerometerJerkMeanZ`
    - `timeDomainBodyAccelerometerStandardDeviationX`
	- `timeDomainBodyAccelerometerStandardDeviationY`
	- `timeDomainBodyAccelerometerStandardDeviationZ`
    - `timeDomainGravityAccelerometerStandardDeviationX`
	- `timeDomainGravityAccelerometerStandardDeviationY`
	- `timeDomainGravityAccelerometerStandardDeviationZ`
    - `timeDomainBodyAccelerometerJerkStandardDeviationX`
	- `timeDomainBodyAccelerometerJerkStandardDeviationY`
	- `timeDomainBodyAccelerometerJerkStandardDeviationZ`
    - `timeDomainBodyGyroscopeMeanX`
	- `timeDomainBodyGyroscopeMeanY`
	- `timeDomainBodyGyroscopeMeanZ`
    - `timeDomainBodyGyroscopeStandardDeviationX`
	- `timeDomainBodyGyroscopeStandardDeviationY`
	- `timeDomainBodyGyroscopeStandardDeviationZ`
    - `timeDomainBodyGyroscopeJerkMeanX`
	- `timeDomainBodyGyroscopeJerkMeanY`
	- `timeDomainBodyGyroscopeJerkMeanZ`
    - `timeDomainBodyGyroscopeJerkStandardDeviationX`
	- `timeDomainBodyGyroscopeJerkStandardDeviationY`
	- `timeDomainBodyGyroscopeJerkStandardDeviationZ`
    - `timeDomainBodyGyroscopeMagnitudeMean`
	- `timeDomainBodyGyroscopeMagnitudeStandardDeviation`
    - `timeDomainBodyGyroscopeJerkMagnitudeMean`
	- `timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation`
    - `timeDomainBodyAccelerometerMagnitudeMean`
	- `timeDomainBodyAccelerometerMagnitudeStandardDeviation`
    - `timeDomainGravityAccelerometerMagnitudeMean`
	- `timeDomainGravityAccelerometerMagnitudeStandardDeviation`
    - `timeDomainBodyAccelerometerJerkMagnitudeMean`
	- `timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation`
