* Encoding: UTF-8.

DATASET ACTIVATE DataSet1.

*ANOVA on all continuous DVs.
ONEWAY Fear Hope Knowledge PostBelief Support PEfficacy CEfficacy Efficacy Intention BY Condition
  /ES=OVERALL
  /STATISTICS DESCRIPTIVES EFFECTS HOMOGENEITY 
  /MISSING ANALYSIS
  /CRITERIA=CILEVEL(0.95)
  /POSTHOC=TUKEY ALPHA(0.05).

GLM Fear Hope PostBelief Support PEfficacy CEfficacy Efficacy Intention Knowledge BY Condition 
    believer_81
  /METHOD=SSTYPE(3)
  /INTERCEPT=INCLUDE
  /POSTHOC=Condition(BONFERRONI) 
  /PLOT=PROFILE(Condition*believer_81 believer_81*Condition) TYPE=BAR ERRORBAR=SE(2) 
    MEANREFERENCE=NO
  /EMMEANS=TABLES(Condition) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(believer_81) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Condition*believer_81) COMPARE(Condition) ADJ(BONFERRONI)
  /EMMEANS=TABLES(Condition*believer_81) COMPARE(believer_81) ADJ(BONFERRONI)
  /PRINT=DESCRIPTIVE ETASQ
  /CRITERIA=ALPHA(.05)
  /DESIGN= Condition believer_81 Condition*believer_81.

GLM Fear Hope PostBelief Support PEfficacy CEfficacy Efficacy Intention Knowledge BY Condition 
    Politics
  /METHOD=SSTYPE(3)
  /INTERCEPT=INCLUDE
  /POSTHOC=Condition(BONFERRONI) 
  /PLOT=PROFILE(Condition*Politics Politics*Condition) TYPE=BAR ERRORBAR=SE(2) MEANREFERENCE=NO
  /EMMEANS=TABLES(Condition) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Politics) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Condition*Politics) COMPARE(Condition) ADJ(BONFERRONI)
  /EMMEANS=TABLES(Condition*Politics) COMPARE(Politics) ADJ(BONFERRONI)
  /PRINT=DESCRIPTIVE ETASQ
  /CRITERIA=ALPHA(.05)
  /DESIGN= Condition Politics Condition*Politics.


