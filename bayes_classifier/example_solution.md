> 439 per 100,000 Americans are expected to be diagnosed this year.
> 
>  An AI startup unveiled a machine learning screening with boasted 95% accuracy, meaning 95% of people with cancer will get positive result from the classification algorithm.  However 5% of people without cancer will also get a positive result.
> 
>  Suppose you had a positive result come up from the machine learning screening.  What is the probability that you actually have cancer?


The correct answer is about 8%, and can be obtained as followed (note: this is an absolute numbers solution, which can be visualized easier for most people.  But we are talking about ratios, so the formal equality above still applies)  :  Out of 100,000 people, 439 have will receive a cancer diagnosis; 417 of those 439 have positive results.  From the same 100,000 people, 99,561 will not have cancer and of those 99,561 women, 4,978 will also get positive results.  This makes the total number of people with positive results 417 + 4,978 or 5,395.  Of those 5,395 people with positive results, only 417 will have cancer.  Expressed as a proportion, this is 417/5,395 or 0.07729 or about 8%.

To put it another way, before the machine learning analysis, the 100,000 people can be divided into two groups:

* Group 1:  439 people with cancer.
* Group 2:  99,561 people without cancer.

Summing these two groups gives a total of 100,000 patients, confirming that none have been lost in the math.  After the analysis, the people can be divided into four groups:

* Group A:  417 people with cancer, and a positive result.
* Group B:  22 people with cancer, and a negative result.
* Group C:  4,978 people without cancer, and a positive result.
* Group D:  94,583 people without cancer, and a negative result.

As you can check, the sum of all four groups is still 100,000.  The sum of groups A and B, the groups with cancer, corresponds to group 1; and the sum of groups C and D, the groups without cancer, corresponds to group 2; so performing the analysis does not actually change the number of people with cancer.  The proportion of the cancer patients (A + B) within the complete set of patients (A + B + C + D) is the same as the 0.439% prior chance that a person has cancer: (417 + 22) / (417 + 22 + 4978 + 94 583) = 439 / 100000 = 0.439%  (i.e. 439 per 100,000). 

The proportion of cancer patients with positive results, within the group of all patients with positive results, is the proportion of (A) within (A + C):   417 / (417 + 4978) = 417 / 5395 ≈ 8%.  If you run the analysis on 100,000 patients, then out of the 5,395 with positive results, 417 of those positive-result patients will have cancer.  This is the correct answer, the answer a doctor should give a positive-result patient if they ask about the chance they have cancer; if thirteen patients ask this question, roughly 1 out of those 13 will have cancer.