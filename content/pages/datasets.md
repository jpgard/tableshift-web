Title: Benchmark Datasets
Date: 2023-06-02 2:44
Modified: 2023-06-02 2:44

This page describes the benchmark datasets available in TableShift.

# Voting
- Availability: Data Use Agreement ([source](https://electionstudies.org))
- Source: [American National Election Studies (ANES)](https://electionstudies.org)
- Target: Voted in U.S. presidential election
- Shift: Geographic Region
- Total Observations: 8,280

# ASSISTments
- Availability: Public
- Source: [Kaggle](https://www.kaggle.com/datasets/nicolaswattiez/skillbuilder-data-2009-2010)
- Target: Next Answer Correct
- Shift: School
- Total Observations: 2,667,776

# Childhood Lead
- Availability: Public
- Source: [National Health and Nutrition Examination Survey (NHANES)](https://www.cdc.gov/nchs/nhanes/index.htm)
- Target: Blood lead levels above CDC Blood Level Reference Value
- Shift: Poverty level
- Total Observations: 27,499

# College Scorecard
- Availability: Public
- Source: [College Scorecard](http://collegescorecard.ed.gov)
- Target: Low Degree Completion Rate
- Shift: Institution Type
- Total Observations: 124,699

# Diabetes
- Availability: Public
- Source: [Behavioral Risk Factor Surveillance System (BRFSS)](https://www.cdc.gov/brfss/index.html)
- Target: Diabetes diagnosis
- Shift: Race
- Total Observations: 1,444,176

# Food Stamps

- Availability: Public
- Source: [American Community Survey](https://www.census.gov/programs-surveys/acs) (via [folktables](http://folktables.org))
- Target: Food stamp recipiency in past year for households with child
- Shift: Geographic Region
- Shift: &#10003;
- Total Observations: 840,582

# HELOC

- Availability: Data Use Agreement ([source](https://community.fico.com/s/explainable-machine-learning-challenge))
- Source: [FICO](https://community.fico.com/s/explainable-machine-learning-challenge)
- Target: Repayment of Home Equity Line of Credit loan
- Shift:  Est. third-party risk level
- Total Observations: 10,459

# Hospital Readmission

- Availability: Public
- Source: [UCI](https://archive.ics.uci.edu/ml/datasets/Diabetes+130-US+hospitals+for+years+1999-2008)
- Target: 30-day readmission of diabetic hospital patients
- Shift:  Admission source
- Total Observations: 99,493

# Hypertension

- Availability: Public
- Source: [Behavioral Risk Factor Surveillance System (BRFSS)](https://www.cdc.gov/brfss/index.html)
- Target: Hypertension diagnosis for high-risk age (50+)
- Shift:  BMI Category
- Total Observations: 846,761

# ICU Length of Stay

- Availability: Data Use Agreement ([source](https://mimic.mit.edu/docs/gettingstarted/))
- Source: [MIMIC-iii](https://physionet.org/content/mimiciii/) via [MIMIC-Extract](https://github.com/MLforHealth/MIMIC_Extract)
- Target: Length of stay >= 3 hrs in ICU
- Shift:  Insurance Type
- Total Observations: 23,944

# ICU Mortality

- Availability: Data Use Agreement ([source](https://mimic.mit.edu/docs/gettingstarted/))
- Source: [MIMIC-iii](https://physionet.org/content/mimiciii/) via [MIMIC-Extract](https://github.com/MLforHealth/MIMIC_Extract)
- Target: ICU patient expires in hospital during current visit
- Shift:  Insurance Type
- Total Observations: 23,944

# Income

- Availability: Public
- Source: [American Community Survey](https://www.census.gov/programs-surveys/acs) (via [folktables](http://folktables.org))
- Target: Income >= 56k for employed adults
- Shift:  Geographic Region
- Total Observations: 1,664,500

# Public Health Insurance

- Availability: Public
- Source: [American Community Survey](https://www.census.gov/programs-surveys/acs) (via [folktables](http://folktables.org))
- Target: Coverage of non-Medicare eligible low-income individuals
- Shift:  Disability Status
- Total Observations: 5,916,565

# Sepsis

- Availability: Public
- Source: [Physionet](https://physionet.org/content/challenge-2019/)
- Target: Sepsis onset within next 6hrs for hospital patients
- Shift:  Length of Stay
- Total Observations: 1,552,210

# Unemployment

- Availability: Public
- Source: [American Community Survey](https://www.census.gov/programs-surveys/acs) (via [folktables](http://folktables.org))
- Target: Unemployment for non-social security-eligible adults
- Shift:  Education Level
- Total Observations: 1,795,434
