---
author: Matteo Francia <br/> DISI --- University of Bologna <br/> m.francia@unibo.it
title: Failing a Machine Learning Project
subtitle: Brown Spot of European Pear
---

:::: {.columns}
::: {.column width="60%"}

> Brown spot of European Pear
> 
> - A company wants to track the spreading of Brown spot of European pear in Emilia Romagna.
> - Brown spots are caused by a fungus (Stemphylium vesicarium) damaging pear fruits and causing economy loss for producers.
> - Also, the company wants to find out if there are environmental factors related to the spreading of such fungus.

How would you address this problem?
:::
::: {.column width="40%"}
![Brown Spots](https://agricoltura.regione.emilia-romagna.it/fitosanitario/temi/avversita/schede/avversita-per-nome/immagini-e-documenti/maculatura-bruna-del-pero/sui-frutti-l2019area-necrotica-si-circonda-spesso-di-alone-rossastro)
:::
::::

#

> Ideally, the goal is to build a dataset such as the following
>
> | Min. Temperature | Presence of Water Source | ... | Level of Damage |
> |------------------|--------------------------|-----|-----------------|
> | 14               | Close distance           | ... | High            |
> | 14.5             | Medium distance          | ... | High            |
> | 13.8             | Medium distance          | ... | Low             |
> | ...              | ...                      | ... | ...             |
>
> and to learn relationships between environmental features and the `Level of Damage`.

What features would you select?

# 

> The company prepares a questionnaire on paper with around 100 questions, and one of the employees moves across Emilia-Romagna to ask questions to the farmers and collect their answers.

![Emilia Romagna, Italy](https://github.com/user-attachments/assets/ad66fa16-fa65-450b-955e-37ab3bd67113)

In your opinion, what are the pros/cons of this solution?

#

> Once the employee has collected almost 100 questionnaires, the company company ask us to apply machine learning techniques to understand which environmental conditions could be related to the spreading of the fungus.

If you were the analyst, what would you do?

#

> To us, it was impossible to apply machine learning techniques to data un paper.
> We prepared a Google Form where answers could be digitalized.
> 
> The employee would take ~1 month to return us the digitalized questionnaires.
> 
> **Issue #1**: some answers where inconsistent with the provided options.
>
> **Issue #2**: what about open questions?
>
> **Issue #3**: what about the trustworthiness of the data? E.g., there are some pesticides/fertilizers whose application is constrained by the Italian/European laws. Can we trust the answers to these questions?
>
> **Issue #4**: we have a dataset of 100 features (assuming for simplicity that each question can be simply turned into an attribute), and a dataset of 100 data.

Outcome?

- This project was missing a proper plan (business+data understanding), and turned out to be a failure for the company.
- Even if we apply ML techniques to the data, the result we get are not statistically relevant.