* Encoding: UTF-8.

DATASET ACTIVATE DataSet1.

*ANOVA on all continuous DVs.
ONEWAY Knowledge PostBelief Support PEfficacy CEfficacy Efficacy Intention Fear_1 Hope_1 BY 
    Condition
  /ES=OVERALL
  /STATISTICS DESCRIPTIVES EFFECTS HOMOGENEITY 
  /MISSING ANALYSIS
  /CRITERIA=CILEVEL(0.95)
  /POSTHOC=LSD BONFERRONI ALPHA(0.05).

*Two-way ANOVA on all continuous DVs with conditions by pre-belief.
GLM Knowledge PostBelief Support PEfficacy CEfficacy Efficacy Intention BY Condition believer_70
  /METHOD=SSTYPE(3)
  /INTERCEPT=INCLUDE
  /POSTHOC=Condition(LSD BONFERRONI) 
  /PLOT=PROFILE(Condition*believer_70 believer_70*Condition) TYPE=BAR ERRORBAR=SE(2) 
    MEANREFERENCE=NO
  /EMMEANS=TABLES(Condition) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(believer_70) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(Condition*believer_70) COMPARE(Condition) ADJ(LSD)
  /EMMEANS=TABLES(Condition*believer_70) COMPARE(believer_70) ADJ(LSD)
  /PRINT=DESCRIPTIVE ETASQ
  /CRITERIA=ALPHA(.05)
  /DESIGN= Condition believer_70 Condition*believer_70.

UNIANOVA PostBelief BY Condition Politics
  /METHOD=SSTYPE(3)
  /INTERCEPT=INCLUDE
  /POSTHOC=Condition(BONFERRONI) 
  /PLOT=PROFILE(Politics*Condition Condition*Politics) TYPE=BAR ERRORBAR=SE(2) MEANREFERENCE=NO
  /EMMEANS=TABLES(Condition*Politics) COMPARE(Condition) ADJ(LSD)
  /EMMEANS=TABLES(Condition*Politics) COMPARE(Politics) ADJ(LSD)
  /CRITERIA=ALPHA(0.05)
  /DESIGN=Condition Politics Condition*Politics.

UNIANOVA Support BY Condition Politics
  /METHOD=SSTYPE(3)
  /INTERCEPT=INCLUDE
  /POSTHOC=Condition(BONFERRONI) 
  /PLOT=PROFILE(Politics*Condition Condition*Politics) TYPE=BAR ERRORBAR=SE(2) MEANREFERENCE=NO
  /EMMEANS=TABLES(Condition*Politics) COMPARE(Condition) ADJ(LSD)
  /EMMEANS=TABLES(Condition*Politics) COMPARE(Politics) ADJ(LSD)
  /CRITERIA=ALPHA(0.05)
  /DESIGN=Condition Politics Condition*Politics.

