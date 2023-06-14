Title: Datasets
page-order: 3

[TOC]

This page describes the benchmark datasets available in TableShift and how to access them.

To see a detailed list of the individual features for each dataset, please refer to the `tableshift.datasets` module [source](https://github.com/mlfoundations/tableshift).

# Benchmark Datasets

We provide details on each dataset below. For additional information, see our paper.

## Voting
* Availability: Data Use Agreement (source)
* Source: American National Election Studies (ANES)
* Target: Voted in U.S. presidential election
* Shift: Geographic Region
* Total Observations: 8,280

**Background:** Understanding participation in elections is a critical task for policymakers, politicians, and those with an interest in democracy. In the 2020 United States presidential election, for example, voter turnout reached record levels, but it is estimated that only 66.8% of eligible individuals voted according to the U.S. Census [(cite)](https://www.census.gov/library/stories/2021/04/record-high-turnout-in-2020-general-election.html). Additionally, so-called ''likely voter models,'' that predict which individuals will vote in an electio, are widely acknowledged as critical to polling and campaigning in U.S. politics. Predicting whether an individual will vote is notoriously difficult; one reason for this challenge is that domain shift is a fundamental reality of such modeling (presidential elections only occur every four years, after which significant political and demographic changes occur prior to the next presidential election).

The prediction target for this dataset is to determine whether an individual will vote in the U.S presidential election, from a detailed questionnaire.

**Data Source:** We use data from the American National Election Studies (ANES) [(cite)](https://electionstudies.org/). Since 1948, ANES has conducted surveys, usually administered as in-person interviews, during most years of national elections. This series of studies, known as the ANES ''Time Series,'' constitutes a pre-election interview and a post-election interview during years of Presidential elections, along with other data sources. Topics cover voting behavior and the elections, together with questions on public opinion and attitudes.

We use features derived from the ANES Time Series. From the pool of over 500 questions in the ANES Time Series, we extract a set of features related to Americans' voting behavior, including their social and political attitudes, opinions about elected leaders, and media consumption habits.

**Domain Shift:** We introduce a domain split by geographic region. We use the ANES Census Region feature, where the out-of-domain region is the region representing the southern United States (AL, AR, DE, D.C., FL, GA, KY, LA, MD, MS, NC, OK, SC,TN, TX, VA, WV). This simulates a study in which voter data is collected in one part of the country, and the goal is to infer voting behavior in another geographic region; this is a common occurence with polling data, particularly during the U.S. primaries, which occur over a period of several weeks at the state level.

## ASSISTments
* Availability: Public
* Source: Kaggle
* Target: Next Answer Correct
* Shift: School
* Total Observations: 2,667,776

**Background:** Machine learning systems are increasingly being adopted in digital learning tools for students of all ages. The ASSISTments tutoring platform [(cite)](https://new.assistments.org) is a free, web-based, data-driven tutoring platform for students in grades 3-12. As of 2020, ASSISTments has been used by approximately 60,000 students with over 12 million problems solved. ASSISTments also periodically releases open-source data snapshots from their platform to support educational research.

**Data Source:** We use the open-source ASSISTments 2012-2013 dataset. This is a dataset from school year 2012-2013 which contains submission-level features (each row in the dataset represents one submission by a student attempting to answer a problem on the ASSISTments tutoring platform). In addition to containing student-, problem-, and school-level features, the dataset also contains affect predictions for students based on an experimental affect detector implemented in ASSISTments. (These affect predictions are intended to be useful in identifying affective states such as boredom, confusion, frustration, and engaged problem-solving behavior).

**Distribution Shift:** We partition the datasets by school. Approximately 700 schools are in the training set, and 10 schools are used as the target distribution. This simulates the process of deploying ASSISTments at a new school.


## Childhood Lead
* Availability: Public
* Source: National Health and Nutrition Examination Survey (NHANES)
* Target: Blood lead levels above CDC Blood Level Reference Value
* Shift: Poverty level
* Total Observations: 27,499


In this task, the goal is to identify children 18 or younger with elevated lead blood levels.

**Background:** Lead is a known environmental toxin that has been shown to affect deleteriously the nervous, hematopoietic, endocrine, renal, and reproductive systems [(cite)](https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_PBCD.htm). In young children, lead exposure is a particular hazard because children more readily absorb lead than adults, and children’s developing nervous systems also make them more susceptible to the effects of lead. However, most children with any lead in their blood have no obvious immediate symptoms [(cite)](https://www.cdc.gov/nceh/lead/prevention/blood-lead-levels.htm). The risk for lead exposure is disproportionately higher for children who are poor, non-Hispanic black, living in large metropolitan areas, or living in older housing. 

The CDC sets a national standard for blood lead levels in children. This value was established in 2012 to be 3.5 micrograms per decileter ($\mu \textrm{g}/\textrm{dL}$) of blood [(cite)](https://www.cdc.gov/nceh/lead/data/blood-lead-reference-value.htm). This value, called the blood lead reference value (BLRV) for children, corresponds to the 97.5 percentile and is intended to identify lead exposure in order to allow parents, doctors, public health officials, and communities to act early to reduce harmful exposure to lead in children. Thus, early prediction of childhood lead exposure, as well as accurate just-in-time prediction for children where obtaining actual laboratory blood test results is too costly or infeasible, is of high utility to many stakeholders.

Early detection of lead exposure can trigger many potentially impactful interventions, including: environmental and home analysis for early identification of sources of lead; testing and treatment for nutritional factors influencing susceptibility to lead exposure (such as calcium and iron intake); developmental analysis and support; and additional medical diagnostic tests [(cite)](https://www.cdc.gov/nceh/lead/advisory/acclpp/actions-blls.htm).

 Using the laboratory blood test results from the NHANES (see 'Data Source' below), the task is to identify whether a respondents' blood level exceeds the BLRV *using only questionnaire data*. We use respondents of age 18 or younger as the target population (note that respondent data for ages 1-5 is restricted and thus not available to our benchmarking study). This simulates the prediction of expensive and time-consuming laboratory testing using a quick and inexpensive questionnaire. Laboratory testing is conducted by the CDC at the National Center for Environmental Health, Centers for Disease Control and Prevention, Atlanta, GA (A detailed description of the methods and procedures used for laboratory testing for lead in the 2017-2018 NHANES survey is given [here](https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_PBCD.htm}); similar descriptions are available for each year of data collection.).

**Data Source:** The data are drawn from the CDC National Health and Nutrition Examination Survey (NHANES) [(cite)](https://wwwn.cdc.gov/Nchs/Nhanes/), a program of the National Center for Health Statistics (NCHS) within the Centers for Disease Control and Prevention (CDC). NHANES is a program of studies designed to assess the health and nutritional status of adults and children in the United States. The survey is unique in that it combines extensive interviews with physical examinations and high-quality laboratory testing. The NHANES interview includes demographic, socioeconomic, dietary, and health-related questions. The survey examines a nationally representative sample of about 5,000 persons each year. The examination component consists of medical, dental, and physiological measurements, as well as laboratory tests administered by highly trained medical personnel.

Findings from NHANES are used to determine the prevalence of major diseases and risk factors for diseases; to assess nutritional status and its association with health promotion and disease prevention; and are the basis for national standards for such measurements as height, weight, and blood pressure. Data from this survey are widely used in epidemiological studies and health sciences research.

We use only questionnaire-based NHANES features as the predictors, but use a prediction target from the NHANES' lab-based component. This simulates the development of a screening questionnaire to predict blood lead levels.

**Distribution Shift:** We use poverty as a domain-splitting variable. Children from low-income households and those who live in housing built before 1978 are at the greatest risk of lead exposure [(cite)](https://www.cdc.gov/nceh/lead/prevention/populations.htm). However, due to factors mentioned above, impoverished populations can be less likely to be included in medical studies, including those that may involve in-person visits for blood laboratory testing, which is the primary method for lead exposure detection. We use the poverty-income ratio (PIR) measurement in NHANES. The PIR is calculated by dividing total annual family (or individual) income by the poverty guidelines specific to the survey year. The Department of Health and Human Services (HHS) poverty guidelines are used as the poverty measure to calculate this ratio. These guidelines are issued each year, in the Federal Register, for determining financial eligibility for certain federal programs, such as Head Start, Supplemental Nutrition Assistance Program (SNAP), Special Supplemental Nutrition Program for Women, Infants, and Children (WIC), and the National School Lunch Program. The poverty guidelines vary by family size and geographic location (with different guidelines for the 48 contiguous states and the District of Columbia; Alaska; and Hawaii). 

The training domain is composed of individuals with PIR of at least 1.3; persons with PIR $\leq 1.3$ are in the held-out domain. The threshold of 1.3 is selected based on the PIR categorization used in NHANES, where PIR $\leq$ 1.3 is the lowest level.

## College Scorecard
* Availability: Public
* Source: College Scorecard
* Target: Low Degree Completion Rate
* Shift: Institution Type
* Total Observations: 124,699

**Background:** Higher education is increasingly critical to securing strong job and income opportunities for persons in the United States. At the same time, the cost of obtaining a four-year college degree is extremely high: The average cost of college* in the United States is $\$35,551$ per student per year, including books, supplies, and daily living expenses and this cost has more than doubled in the 21st century alone, with an annual growth rate of $7.1%$ [(cite)](https://educationdata.org/average-cost-of-college). 

However, not all institutions have similar outcomes for students. Graduation rates across institutions in the U.S. vary widely, and failure to complete a degree can leave a student with significant debt and a reduced ability to repay it. Understanding factors related to degree completion is an area of active research.

For this task, our goal is to predict whether an institution has a low completion rate, based on other characteristics of that institution. While the definition of a ''low'' completion rate is ultimately subjective and context-dependent, we use a thredhold of 50%, which is approximately equivalent to the median graduate rate across the institutions in the dataset. We use the completion rate for first-time, full-time students at four-year institutions (150% of expected time to completion/6 years).

**Data Source:** We use the College Scorecard [(cite)](https://collegescorecard.ed.gov). The College Scorecard is an institution-level dataset compiled by the U.S. Department of Education from 1996-present. The College scorecard includes detailed institutional factors, including information about each institutions' student population, course offerings, and outcomes.

**Distribution Shift:** Institutions vary widely in their profiles, student populations, educational approach, and target industries or student pathways. We partition universities according to the `CCBASIC` variable (The data dictionary for the College Scorecard is available [here](https://collegescorecard.ed.gov/assets/CollegeScorecardDataDictionary.xlsx)), which gives the Carnegie Classification (Basic) [(cite)](https://carnegieclassifications.acenet.edu). This classification uses a framework developed by the Carnegie Commission on Higher Education in the early 1970s to support its research program. Partitioning our data according to this variable measures the robustness over institutional subpopulations, and is thus a form of subpopulation shift. We use the following set of institutions as the target domain (all other institutional types are in the training domain): 'Special Focus Institutions--Other special-focus institutions', 'Special Focus Institutions--Theological seminaries, Bible colleges, and other faith-related institutions', "Associate's--Private For-profit 4-year Primarily Associate's", 'Baccalaureate Colleges--Diverse Fields', 'Special Focus Institutions--Schools of art, music, and design', "Associate's--Private Not-for-profit", "Baccalaureate/Associate's Colleges", "Master's Colleges and Universities (larger programs)". Exact definitions of each institution class are available via the Carnegie Commission on Higher Education [(cite)](https://carnegieclassifications.acenet.edu).

## Diabetes
* Availability: Public
* Source: Behavioral Risk Factor Surveillance System (BRFSS)
* Target: Diabetes diagnosis
* Shift: Race
* Total Observations: 1,444,176

**Background:** Diabetes is a chronic disease that affects at least 37.7million people in the United States (11.3% of the U.S population); it is estimated that an additional 96 million adults have prediabetes [(cite)](https://www.cdc.gov/diabetes/health-equity/diabetes-by-the-numbers.html). Diabetes increases the risk of a variety of other health conditions, including stroke, kidney failure, renal complications, peripheral vascular disease, heart disease, and death. The economic cost of diabetes is also significant: The [total estimated cost](https://pubmed.ncbi.nlm.nih.gov/29567642/) of diagnosed diabetes in 2017 is \$327 billion. Care for people with diagnosed diabetes accounts for 1 in 4 health care dollars in the U.S. -- more than half of that expenditure is directly attributable to diabetes [(cite)](https://pubmed.ncbi.nlm.nih.gov/29567642/). 

Early detection of diabetes thus stands to have a significant impact, allowing for clinical intervention and potentially reducing the prevalence of diabetes. Further, even prediabetes is [ackowledged](https://pubmed.ncbi.nlm.nih.gov/29567642/) to have significant impacts both on health outcomes and quality of life, and early detection if high diabetes risk could serve to identify prediabetic individuals. There exists a considerable prior literature on models for early diabetes prediction.

**Data Source:** We use data provided by the Behavioral Risk Factors Surveillance System (BRFSS) [(cite)](https://www.cdc.gov/brfss/index.html). BRFSS is a large-scale telephone survey conducted by the Centers of Disease Control and Prevention. BRFSS collects data about U.S. residents regarding their health-related risk behaviors, chronic health conditions, and use of preventive services. BRFSS collects data in all 50 states as well as the District of Columbia and three U.S. territories. BRFSS completes more than 400,000 adult interviews each year, making it the largest continuously conducted health survey system in the world. BRFSS annual survey data from 2017-2021 is currently available from the CDC.

The BRFSS is composed of three components: 'fixed core' questions, asked every year, 'rotating core', asked every other year, and 'emerging core'. Since some of our features come from the rotating core, we only use every-other-year data sources; otherwise many features would be empty for the intervening years.

For the Diabetes prediction task, we use a set of features related to [several known indicators](https://pubmed.ncbi.nlm.nih.gov/31538566/) for diabetes derived from. These risk factors are general physical health, high cholesterol, BMI/obesity, smoking, the presence of other chronic health conditions (stroke, coronary heart diseas), diet, alcohol consumption, exercise, household income, marital status, time since last checkup, education level, health care coverage, and mental health. For each risk factor, we extract a set of relevant features from the BRFSS foxed core and rotating core questionnaires. We also use a shared set of demographic indicators (race, sex, state, survey year, and a question related to income level). The prediction target is a binary indicator for whether the respondent has ever been told they have diabetes.

**Distribution Shift:** While diabetes affects a large fraction of the overall population, diabetes risk varies according to several demographic factors. One such [factor](https://www.bmj.com/content/359/bmj.j5019) is race/ethnicity, with all other race-ethnicity groups reported in the 2022 CDC National Diabetes Statistics Report [displaying higher risk](https://www.cdc.gov/diabetes/data/statistics-report/index.html) than 'White non-Hispanic' individuals. Compounding this issue, it has been widely acknowledged that health studiy populations tend to be biased toward white European-Americans (e.g. [1](https://pubmed.ncbi.nlm.nih.gov/15714732/) [2](https://pubmed.ncbi.nlm.nih.gov/26671224/) [3](https://www.scientificamerican.com/article/clinical-trials-have-far-too-little-racial-and-ethnic-diversity/) [4](https://www.theatlantic.com/health/archive/2016/06/why-are-health-studies-so-white/487046/)). As a result, these studies have [tended](https://www.theatlantic.com/health/archive/2016/06/why-are-health-studies-so-white/487046/) to focus on risk factors affecting white populations at the expense of identifying risk factors for nonwhite populations, despite distinct differences in how these populations are affected by various disease risk factors, differences in individuals' genetic factors, and differences in how they respond to medication across racial and ethnic populations. This disparity is a [contributing factor](https://pubmed.ncbi.nlm.nih.gov/9653601/) to race-based disparities in treatment for diabetes.

In order to simulate the domain gap induced by these real-world differences in study vs. deployment populations, we partition the benchmark task by race/ethnicity. We use ''White non-Hispanic''-identified individuals as the training domain, and all other race/ethnicity groups as the target domain.

## Food Stamps
* Availability: Public
* Source: American Community Survey (via folktables)
* Target: Food stamp recipiency in past year for households with child
* Shift: Geographic Region
* Total Observations: 840,582

**Background:** Food insecurity is a problem affecting more than 10% of households  (13.5 million) across the United States in 2021 [(cite)](https://www.ers.usda.gov/topics/food-nutrition-assistance/food-security-in-the-u-s/key-statistics-graphics/). Various programs exist to provide families and individuals with supplemental income to reduce food insecurity. However, diminished social support services in many U.S. states limit the ability of outreach providers to ensure all aligible individuals are receiving available benefits. Low-cost, low-friction screening tools powered by machine learning models might provide useful information whether an individual is receiving food stamps in order to identify lilely candidates for both food security programs (''food stamps'') and as a proxy for eligibility and need for additional support services.

**Data Source:** We use person-level data from the American Community Survey (ACS) [(cite)](https://www.census.gov/programs-surveys/acs/about.html). We filter the data for low-income adults aged 18-62 (i.e. selecting only adults below the social security eligibility age) in households with at least one child in the household. We use an income threshold of \$30000 based on the U.S. poverty threshold for a family with one child.

**Distribution Shift:** In the United States, food stamps programs are managed at the state level. We apply domain shift over states, at the *regional* level. Specifically, we use the ACS census region as the split. The ACS includes 10 regions, which are: Puerto Rico;  New England (Northeast region); Middle Atlantic (Northeast region); East North Central (Midwest region); West North Central (Midwest region); South Atlantic (South region); East South Central (South region); West South Central (South Region); Mountain (West region); Pacific (West region). We use East South Central (South region) as the holdout domain for this task.

This split parallels the case where a system is trained on a subset of states in a specific geographic area (perhaps in a localized study that draws participants or respondents from some geographic areas, but excludes other areas), and then applied to another. It also parallels the case where there is an interest in simulating the effect of a policy change. Finally, it mirrors the challenge of predicting an effect of a policy outcome (food stamps eligibility/recipiency) where differences in the underlying policy (different programs or eligibility across states) are a confounder. 

## HELOC
* Availability: Data Use Agreement (source)
* Source: FICO
* Target: Repayment of Home Equity Line of Credit loan
* Shift: Est. third-party risk level
* Total Observations: 10,459

**Background:** FICO (legal name: Fair Isaac Corporation) is a US-based company that provides credit scoring services. The FICO score, a measure of consumer credit risk, is a widely used risk assessment measure for consumer lending in the united states.

The Home Equity Line of Credit (HELOC) is a line of credit, secured by the applicant's home. A HELOC provides access to a revolving credit line to use for large expenses or to consolidate higher-interest rate debt on other loans such as credit cards. A HELOC often has a lower interest rate than some other common types of loans. To assess an applicant's suitability for a HELOC, a lender evaluates an applicants' financial background, including credit score and financial history. The lender's goal is to predict, using this historical customer information, whether a given applicant is likely to repay a line of credit and, if so, how much credit should be extended.

In addition to desiring accurate credit risk predictions for their overall utility for both lenders and borrowers, lending institutions are incentivized (and, in some cases, legally required) to use models which achieve some degree of robustness: institutions can face severe penalties when borrowers are not treated equitably.

**Data Source:** We use the dataset from the FICO Commmunity Explainable AI Challenge [(cite)](https://community.fico.com/s/explainable-machine-learning-challenge), an open-source dataset containing features derived from anonymized credit bureau data. The binary prediction target is an indicator for whether a consumer was 90 days past due or worse at least once over a period of 24 months from when the credit account was opened. The features represent various aspects of an applicant's existing financial profile, including recent financial activity, number of various transactions and credit inquiries, credit balance, and number of delinquent accounts.

**Distribution Shift:** It is widely acknowledged that the dominant approach to credit scoring using financial profiles can unintentionally discriminate against historically marginalized groups (credit bureau data [do not include](https://apps.urban.org/features/credit-health-during-pandemic/) explicit information about race). For example, since FICO scores are based on payment history and credit use and many marginalized groups in the United States have lower or less reliable incomes, these marginalized groups can suffer from [systematically](https://www.cnbc.com/2021/01/28/black-and-hispanic-americans-often-have-lower-credit-scores.html) [lower](https://www.prnewswire.com/news-releases/black-and-hispanic-americans-on-the-us-financial-system-the-odds-were-always-against-me-new-credit-sesame-survey-finds-301215072.html) [credit](https://www.epi.org/publication/latino-black-borrowers-high-rate-subprime-mortgages/#:~:text=In%20recent%20years%2C%20Latino%20and,to%20go%20to%20risky%20borrowers.) [scores](https://apps.urban.org/features/credit-health-during-pandemic/); this has been referred to as the ''credit gap'' ([(1)](https://www.businessinsider.com/personal-finance/credit-gap-black-americans-building-wealth-2021-1), [2](https://www.urban.org/sites/default/files/publication/101160/explaining_the_black-white_homeownership_gap_2.pdf)). In particular, debt and savings level play a role in credit scores and can systematically [disadvantage](https://apps.urban.org/features/credit-health-during-pandemic/) Black and Hispanic applicants, even when demographic data are not formally used in the credit rating process.

For this task, we partition the dataset based on the 'External Risk Estimate', a feature in the dataset corresponding to the risk estimate assigned to an applicant by a third-party service. This estimate was identified in the original FICO explanable ML challenge  [(cite)](https://community.fico.com/s/blog-post/a5Q2E0000001czyUAA/fico1670). We use individuals with a high external risk estimate (where ''high'' estimate is defined as exceeding an external risk estimate of 63, a threshold identified in the original challenge-winning model linked above) as the training domain, and individuals with estimate $\leq 63$ as the held-out domain.

## Hospital Readmission
* Availability: Public
* Source: UCI
* Target: 30-day readmission of diabetic hospital patients
* Shift: Admission source
* Total Observations: 99,493

**Background:** Effective management and treatment of diabetic patients admitted to the hospital can have a [significant impact](https://pubmed.ncbi.nlm.nih.gov/11889147/) on their health outcomes, both short-term and long-term. Several factors can affect the quality of treatment patients receive. One of the costliest and potentially most adverse outcomes after a patient is released from the hospital is for that patient to be *readmitted* soon after their initial release; this can both be a sign of a condition that is not improving, and, at times, ineffective initial treatment. Thus, predicting the readmission of patients is a priority from both a medical and economic perspective. 

In this task, the goal is to predict whether a diabetic patient is *readmitted* to the hospital within 30 days of their initial release.

**Data Source:** We use the following [dataset](https://archive.ics.uci.edu/ml/datasets/Diabetes+130-US+hospitals+for+years+1999-2008), which represents 10 years (1999-2008) of clinical care at 130 US medical facilities, including hospitals and other networks. It includes over 50 features representing patient and hospital outcomes. The dataset includes observations for records which meet the following criteria: (1) It is an inpatient encounter (a hospital admission). (2) It is a diabetic encounter, that is, one during which any kind of diabetes was entered to the system as a diagnosis. (3) The length of stay was at least 1 day and at most 14 days. (4) Laboratory tests were performed during the encounter. (5) Medications were administered during the encounter.

The data contains such attributes as patient number, race, gender, age, admission type, time in hospital, medical specialty of admitting physician, number of lab test performed, HbA1c test result, diagnosis, number of medication, diabetic medications, number of outpatient, inpatient, and emergency visits in the year before the hospitalization, etc. We use the full set of features in the initial dataset, which is described [here](https://pubmed.ncbi.nlm.nih.gov/24804245/).

**Distribution Shift:** Patients can be (re)admitted to hospitals from a variety of sources. The source of a patient admission canbe correlated with many demographic and other risk factors known to be related to health outcomes (e.g. race, income level, etc.). 

We use the ''admission source'' as the domain split for TableShift. There are 21 distinct admission sources in the dataset, including ''transfer from a hospital'', ''physician referral'', etc. After conducting a sweep over various held-out values, we use ''emergency room'' as the held-out domain split. This matches a potential scenario where a model is constructed using a variety of admission sources, but a patient from a novel source is added; it is also possible e.g. that data from emergent patients could not be collected when training a readmission model. We note that this domain split provides 20 unique training subdomains (the other admission sources), which is the largest $|\Dtr|$ in TableShift. 

## Hypertension
* Availability: Public
* Source: Behavioral Risk Factor Surveillance System (BRFSS)
* Target: Hypertension diagnosis for high-risk age (50+)
* Shift: BMI Category
* Total Observations: 846,761

**Background:** Hypertension, or  systolic blood pressure (typically systolic pressure 130 mm Hg or higher or diastolic 80 or higher) [affects nearly half of Americans](https://www.heart.org/en/health-topics/high-blood-pressure/the-facts-about-high-blood-pressure). Hypertension is sometimes [called](https://www.heart.org/en/health-topics/high-blood-pressure/the-facts-about-high-blood-pressure) a ''silent killer'' because in most cases, there are no obvious symptoms of hypertension; this would make an accurate at-risk model of hypertension useful. When left untreated, hypertension is associated with the [strongest evidence](https://pubmed.ncbi.nlm.nih.gov/31865786/) for causation of all risk factors for heart attack and other cardiovascular disease. Hypertension also [increases](https://www.heart.org/en/health-topics/high-blood-pressure/health-threats-from-high-blood-pressure) the risk of stroke, kidney damage, vision loss, insulin resistance, and other adverse outcomes. While existing tools have attempted to predict blood pressure without the use of a cuff (the gold-standard measurement of blood pressure), these tools are still significantly [less](https://www.imedicalapps.com/2016/03/instant-blood-pressure-app-study/) [accurate](https://www.ftc.gov/news-events/news/press-releases/2016/12/marketers-blood-pressure-app-settle-ftc-charges-regarding-accuracy-app-readings), and there is an ongoing need for effective blood pressure measurement.

**Data Source:** We use BRFSS as the raw data source, as described in the Diabetes above. However, for the hypertension prediction task, we use features related to the following set of [risk factors](https://www.nhlbi.nih.gov/health/high-blood-pressure/causes) for hypertension: Age, family history and genetics, other medical conditions (e.g. diabetes, various forms of cancer), race/ethnicity, sex, and social and economic factors (income, employment status). We collect all survey questions related to these risk factors and use them as the predictors for this task, along with a shared set of demographic indicators (race, sex, state, survey year, and a question related to income level).

**Distribution Shift:** We use BMI category as the domain splitting variable. Individuals with BMI identified as ''overweight'' or ''obese'' are in the held-out domain, and those identified as ''underweight'' or ''normal weight'' are in the training domain. This simulates a model being deployed under subpopulation shift, where the target population has different (higher) BMI than the training population.

## ICU Length of Stay
* Availability: Data Use Agreement (source)
* Source: MIMIC-iii via MIMIC-Extract
* Target: Length of stay >= 3 hrs in ICU
* Shift: Insurance Type
* Total Observations: 23,944

**Background:** Length of hospital stay is, along with patient mortality, [''the most important clinical outcome''](https://www.sciencedirect.com/science/article/pii/S1532046418300716) for an ICU admission. Accurately predicting the length of stay of a patient can aid in assessment of the severity of a patient's condition. Of particular clinical relevance, making these predictions *early* and with a \textit{non-zero time gap*between the prediction and the outcome is of real-world importance: predictions must be made sufficiently early such that a patient's treatment can be adjusted to potentially avoid a negative outcome. The importance of this prediction task for real-world clinical care is underscored by the many previous works in the medical literature addressing this prediction topic (see our paper for references).

In our benchmark, the specific task is to predict, from the first 24 hours of patient data, an ICU patient's stay will exceed 3 days (a binary indicator for whether length of stay $> 3$). We note that this is directly adopted from MIMIC-extract.

**Data Source:** We use the [MIMIC-extract](https://github.com/MLforHealth/MIMIC_Extract) dataset. MIMIC-extract is an open-source pipeline for transforming raw electronic health record (EHR) data from the [Medical Information Mart for Intensive Care (MIMIC-III)](https://physionet.org/content/mimiciii/) dataset. 

MIMIC-III, the underlying data source, captures over a decade of intensive care
unit (ICU) patient stays at Beth Israel Deaconess Medical Center in Boston, USA. An individual patient might be admitted to the ICU at multiple times in the dataset; however, [MIMIC-extract](https://github.com/MLforHealth/MIMIC_Extract) focuses on each subject's first UCI visit only, since those who make repeat visits typically require additional considerations with respect to modeling and care. MIMIC-extract includes all patient ICU stays in the MIMIC-III database that where the following criteria are met: $(i)$ the subject is an adult (age of at least 15 at time of admission), $(ii)$ the stay is the first known ICU admission for the subject, and $(iii)$ the total duration of the stay is at least 12 hours and less than 10 days.

MIMIC-extract is designed by EHR domain experts with clinical validity (of data) and relevance (of prediction tasks) in mind. In addition to the filtering described above, MIMIC-extract's pipeline includes steps to standardize units of measurement, detect and correct outliers, and select a curated set of features that reduce data missingness in the preprocessed data; for details on the steps taken by the original authors to achieve this, see [MIMIC-extract](https://github.com/MLforHealth/MIMIC_Extract). We use the preprocessed version of MIMIC-extract made available by the authors \footnote{The publicly-accessible dataset (which requires credentialed MIMIC-III access through PhysioNet due to privacy restrictions) is described at [MIMIC-extract](https://github.com/MLforHealth/MIMIC_Extract). This includes the static demographic variables, alongside the time-varying vitals and labs described [here](https://www.nature.com/articles/sdata201635). Because event he preprocessed data contains missing values, we use the authors' default methods for handling missing data.

The resulting dataset contains approximately $24,000$ observations.

**Distribution Shift:** We split the domains by health insurance type. We train on patients with all insurance types except Medicare, and use patients with Medicare insurance as the target domain.

## ICU Mortality
* Availability: Data Use Agreement (source)
* Source: MIMIC-iii via MIMIC-Extract
* Target: ICU patient expires in hospital during current visit
* Shift: Insurance Type
* Total Observations: 23,944

**Background:**  As discussed in the background of the ICU Length of Stay task, hospital mortality is considered to be one of the most important outcomes for ICU patients. The clinical relevance of hospital mortality is perhaps even more clear than for length-of-stay prediction, as preventing patient mortality is one of the primary goals for many patients. Again, as discussed in the ICU Length of Stay task, making this prediction *early* is of particular importance, as early predictions can provide a proxy for overall patient risk and can be used to intervene to avoid mortality.

We note that in this task, we are predicting *hospital* morality (that the patient dies at any point during this visit, even if they are discharged from the ICU to another unit in the hospital). Hospital mortality events are distinct from (and a superset of) ICU mortality events. As mentioned above, the importance of this prediction task for real-world clinical care is underscored by the many previous works addressing this prediction topic (see e.g. [1](https://www.nature.com/articles/s41597-019-0103-9), [2](https://www.sciencedirect.com/science/article/pii/S1532046418300716), [3](https://arxiv.org/abs/1907.08322)).

**Data Source:** This task uses the same data source and feature set from MIMIC-extract described above in the ICU Length of Stay task.

**Distribution Shift:** We split the domains by health insurance type. We train on patients with all insurance types except {Medicare, Medicaid} and use patients with {Medicare, Medicaid} insurance as the target domain.


## Income
* Availability: Public
* Source: American Community Survey (via folktables)
* Target: Income >= 56k for employed adults
* Shift: Geographic Region
* Total Observations: 1,664,500

**Background:** Income is a widely-used measure of social stability. In addition, income is often used as a criteria for various social support programs. For example, in the United States, income is used to measure poverty, and can be used determine eligibility for various social services such as food stamps and medicaid. Income prediction has obvious commercial utility. Finally, income prediction has a rich and unique history in the machine learning community, dating back to the ''adult income'' census dataset.

**Data Source:**  We use person-level data from the American Community Survey (ACS), as described in the Food Stamps Task. However, for the income prediction task, we use different filtering. We use the filtering described in [folktables](https://www.nature.com/articles/sdata201635), which filters for adults aged at least 16 years old, 
 who report working more than zero hours in the past month with reported income at least $ \$100.00 $. We use an income threshold of $ \$56,000$, which is the median income, as in [this study](https://github.com/jpgard/subgroup-robustness-grows-on-trees).

**Distribution Shift:** Income patterns can vary in many ways. Here, we focus on domain shift at the *regional* level. We use the same splitting variable (US Census Region) described in the Food Stamps task. However, for the income prediction task, we use New England (Northeast region) as the held-out domain.

## Public Health Insurance
* Availability: Public
* Source: American Community Survey (via folktables)
* Target: Coverage of non-Medicare eligible low-income individuals
* Shift: Disability Status
* Total Observations: 5,916,565

**Background:** People use health-care services to diagnose, cure, or treat disease or injury; to improve or maintain function; or to obtain information about their health status and prognosis. In the United States, health insurance is a critical component of individuals' ability to access health care. Public health insurance exists, among other reasons, to provide affordable and accessible health insurance options for individuals not willing or able to purchase insurance through the private insurance market. However, not all individuals have health insurance; only 88% of individuals in the U.S had health insurance in 2019 according to the National Health Interview Survey (NHIS). Increasing the proportion of people in the United States with health insurance is one of the four healthcare objectives of the U.S. Department of Health and Human Services ''Healthy People 2030'' initiative [(cite)](https://health.gov/healthypeople/objectives-and-data/browse-objectives/health-care-access-and-quality/increase-proportion-people-health-insurance-ahs-01). In this task, the goal is to predict whether an individual is covered by public health insurance.

**Data Source:** We use person-level data from the American Community Survey (ACS), as described in the Food Stamps Task. However, for this task, we filter the data to include only low-income individuals (those with income less than $ \$ 30,000$) who are below the age of 65 (at which age all persons in the United States are covered by Medicare). This is the same filtering used in the studies associated with [(1)](https://github.com/socialfoundations/folktables), [2](https://github.com/jpgard/subgroup-robustness-grows-on-trees).

**Distribution Shift:** [Many factors](https://pubmed.ncbi.nlm.nih.gov/29782136/) can influence individuals' ability to access or utilize health insurance and healthcare services. These include spoken language skills, mobility (whether an individual has recently relocated), education, ease of obtaining services, and discriminatory practices among providers. We focus on *disability status*, as this is a widely-known [factor](https://pubmed.ncbi.nlm.nih.gov/29782136/) in obtaining access to adequate health care. Disability is also a particularly realistic factor in that disability status is likely to contribute to nonresponse to certain forms of data collection for many tabular data sources (including the four methods used to collect the ACS data: internet, mail, telephone, and in-person interviews) that can disadvantage persons with certain disabilities and decrease likelihood of participation or cause them to be excluded from study population.

For this task, the holdout domain $\Dte$ consists of persons with disabilities; the training domain $\Dtr$ consists of persons who do not have disabilities. This simulates a situation where data collection practices excluded disabled persons, potentially through the factors described above.

## Sepsis
* Availability: Public
* Source: Physionet
* Target: Sepsis onset within next 6hrs for hospital patients
* Shift: Length of Stay
* Total Observations: 1,552,210

**Background:** Sepsis is a life-threatening condition that arises when the body's response to infection causes injury to its own tissues and organs. Sepsis is a major public health concern with significant morbidity, mortality, and healthcare expenses; each year, 1.7 million adults in America develop sepsis, of which at least $350,000$ die during their hospitalization or are discharged to hospice. The CDC estimates that 1 in 3 people who dies in a hospital had sepsis during that hospitalization [(cite)](https://www.cdc.gov/sepsis/what-is-sepsis.html).

Early detection and antibiotic treatment of sepsis improve patient outcomes. While advances have been made in early sepsis prediction, there is a [fundamental unmet clinical need](https://ieeexplore.ieee.org/document/9005736) for improved predictio. The goal in this task is to predict, from a set of fine-grained ICU data (including laboratory measurements, sensor data, and patient demographic information), whether a patient will experience sepsis onset within the next 6 hours.

**Data Source:** We use the data source from the [PhysioNet/Computing in Cardiology Challenge](https://ieeexplore.ieee.org/document/9005736), which was designed by clinicians and other healthcare experts to facilitate the development of automated, open-source algorithms for the early detection of sepsis from clinical data. The dataset is derived from ICU patient records for over $60,000$ patients from two hospitals with up to 40 clinical variables collected during each hour of the patient's ICU stay.

**Distribution Shift:** We explored multiple domain shifts for this dataset; we note that, in particular, splitting domains by *hospital* did *not* lead to a shift gap for tuned baseline models (although there is a third, held-out hospital that was used in the original challenge for this dataset, it is not publicly available and is not part of the TableShift benchmark). Instead, we use ''length of stay'' as a domain shift variable. We bifurcate the dataset based on how long a patient has been in the ICU, with patients having been in ICU for $\leq 47$ hours in the training domain, and patients having been in ICU more than 47 hours in the test domain. This matches a scenario where a medical model is trained only on observed stays of a fixed duration (no more than two full days), but then used beyond its initial observation window to predict sepsis in patients with longer stays. We note that length of stay of 47 hours corresponds to the 80th percentile of the data for that feature.

## Unemployment
* Availability: Public
* Source: American Community Survey (via folktables)
* Target: Unemployment for non-social security-eligible adults
* Shift: Education Level
* Total Observations: 1,795,434

**Background:** Unemployment is a key macroeconomic indicator and a measure of individual well-being. Unemployment is also linked to a variety of adverse outcomes, including socioeconomic, psychological, and health impacts ([(1)](https://jech.bmj.com/content/63/2/92), [2](https://pubmed.ncbi.nlm.nih.gov/18431836/), [3](https://pubmed.ncbi.nlm.nih.gov/12883065/), [4](https://www.jstor.org/stable/25568295)).

**Data Source:** We use person-level data from the American Community Survey (ACS), as described in the Food Stamps Task. However, for this task, we filter the data to include only individuals over the age of 18 and below the age of 62 (at which age persons in the United States are eligible to receive Social Security income).

**Distribution Shift:** Many factors are known to be related to unemployment. We focus on a form of subpopulation shift, and use *education level* as the domain split. We use individuals with educational attainment of GED (high school diploma equivalent) or higher as the training population $\Dtr$, and individuals without high school-level education as $\Dte$. This simulates a survey collection with a biased sample that systematically excludes such persons.

# Accessing The Datasets

All datasets in TableShift are either public, or have open credentialized access (for example, when human subjects training or a data use agreement is required to access the data). Most of the datasets (10 of the 15) are public. 

The table below summarizes how to gain access to each dataset. Note that datasets marked 'Public' require no action to access; they can be used in TableShift out of the box. For the other datasets, follow the link to gain access.

Some datasets require downloading files in order to use them in TableShift; the TableShift API will provide instructions on what data is required and where to place the data when you run a caching or training job with that dataset.

| Dataset                 | String Identifier         | Availability                                                                                       | Source                                                                                                                 |
|-------------------------|---------------------------|----------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------|
| Voting                  | 'anes'                    | Data Use Agreement ([source](https://electionstudies.org))                                         | [American National Election Studies (ANES)](https://electionstudies.org)                                               |
| ASSISTments             | 'assistments'             | Public                                                                                             | [Kaggle](https://www.kaggle.com/datasets/nicolaswattiez/skillbuilder-data-2009-2010)                                   |
| Childhood Lead          | 'nhanes_lead'             | Public                                                                                             | [National Health and Nutrition Examination Survey (NHANES)](https://www.cdc.gov/nchs/nhanes/index.htm)                 |
| College Scorecard       | 'college_scorecard'       | Public                                                                                             | [College Scorecard](http://collegescorecard.ed.gov)                                                                    |
| Diabetes                | 'brfss_diabetes'          | Public                                                                                             | [Behavioral Risk Factor Surveillance System (BRFSS)](https://www.cdc.gov/brfss/index.html)                             |
| Food Stamps             | 'acsfoodstamps'           | Public                                                                                             | [American Community Survey](https://www.census.gov/programs-surveys/acs) (via [folktables](http://folktables.org)      |
| HELOC                   | 'heloc'                   | Data Use Agreement ([source](https://community.fico.com/s/explainable-machine-learning-challenge)) | [FICO](https://community.fico.com/s/explainable-machine-learning-challenge)                                            |
| Hospital Readmission    | 'diabetes_readmission'    | Public                                                                                             | [UCI](https://archive.ics.uci.edu/ml/datasets/Diabetes+130-US+hospitals+for+years+1999-2008)                           |
| Hypertension            | 'brfss_blood_pressure'    | Public                                                                                             | [Behavioral Risk Factor Surveillance System (BRFSS)](https://www.cdc.gov/brfss/index.html)                             |
| ICU Length of Stay      | 'mimic_extract_los_3'     | Data Use Agreement ([source](https://mimic.mit.edu/docs/gettingstarted/))                          | [MIMIC-iii](https://physionet.org/content/mimiciii/) via [MIMIC-Extract](https://github.com/MLforHealth/MIMIC_Extract) |
| ICU Mortality           | 'mimic_extract_mort_hosp' | Data Use Agreement ([source](https://mimic.mit.edu/docs/gettingstarted/))                          | [MIMIC-iii](https://physionet.org/content/mimiciii/) via [MIMIC-Extract](https://github.com/MLforHealth/MIMIC_Extract) |
| Income                  | 'acsincome'               | Public                                                                                             | [American Community Survey](https://www.census.gov/programs-surveys/acs) (via [folktables](http://folktables.org)      |
| Public Health Insurance | 'acspubcov'               | Public                                                                                             | [American Community Survey](https://www.census.gov/programs-surveys/acs) (via [folktables](http://folktables.org)      |
| Sepsis                  | 'physionet'               | Public                                                                                             | [Physionet](https://physionet.org/content/challenge-2019/)                                                             |
| Unemployment            | 'acsunemployment'         | Public                                                                                             | [American Community Survey](https://www.census.gov/programs-surveys/acs) (via [folktables](http://folktables.org)      |
