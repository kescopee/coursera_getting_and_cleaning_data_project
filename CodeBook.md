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