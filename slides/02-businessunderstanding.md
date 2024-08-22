---
format:
  revealjs: 
    footer: "Matteo Francia - Machine Learning - A.Y. 2024/25"
bibliography: refs.bib
---

# Business understanding

(*Perhaps the most important/hard phase of any data mining project* [@shearer2000crisp])

The initial business understanding phase focuses on

- understanding the project objectives from a business perspective,
- converting this knowledge into a data mining problem definition,
- and then developing a preliminary plan designed to achieve the objectives.

To understand which data should later be analyzed, and how, it is vital for data mining practitioners to fully understand:

1. business objectives,
2. assessing the situation,
3. determining the data mining goals,
4. and producing the project plan.

# Determine the Business Objectives

Understanding a client’s true goal is critical to uncovering the important factors involved in the planned project—and to ensuring that the project does not result in producing the right answers to the wrong questions.

Data analysts must uncover the primary business objective as well as the related questions the business would like to address.

- For example, the primary business goal could be to retain current customers by predicting when they are prone to move to a competitor.
  - “How does the primary channel (e.g., ATM, branch visit, Internet) of a bank customer affect whether they stay or go?” or 
  - “Will lower ATM fees significantly reduce the number of highvalue customers who leave?” A secondary issue might be to determine whether lower fees affect only one particular customer segment.

Finally, a good data analyst always determines the measure of success

- Success may be measured by reducing lost customers by 10 percent or simply by achieving a better understanding of the customer base
- Data analysts should beware of setting unattainable goals and should make sure that each success criterion relates to at least one of the specified business objectives

# Assess the Situation

Data analysts outlines the resources, from personnel to software, that are available to accomplish the data mining project.

- Particularly important is discovering what data is available to meet the primary business goal.
- At this point, the data analyst also should list the assumptions made in the project-assumptions
  - “To address the business question, a minimum number of customers over age 50 is necessary.”
  - The data analyst also should list the project risks, list potential solutions to those risks, create a glossary of business and data mining terms,
and construct a cost-benefit analysis for the project.

# Determine the Data Mining Goals

The data mining goal states project objectives in business terms

- “Predict how many widgets a customer will buy given their purchases in the past three years, demographic information (age, salary, city, etc.), and the item price.”
- Success should also be defined in these terms such as achieving a certain level of predictive accuracy.

If the business goal cannot be effectively translated into a data mining goal, *it may be wise to consider redefining the problem*.

# Produce a Project Plan

The project plan describes the intended plan for achieving the data mining goals, including

- outlining specific steps and a proposed timeline,
- an assessment of potential risks,
- and an initial assessment of the tools and techniques needed to support the project.

Generally accepted industry timeline standards are [@shearer2000crisp]:

- 50 to 70 percent of the time and effort in a data mining project involves the Data Preparation Phase;
- 20 to 30 percent involves the Data Understanding Phase;
- only 10 to 20 percent is spent in each of the Modeling, Evaluation, and Business Understanding Phases;
- and 5 to 10 percent is spent in the Deployment Planning Phase.

# Interdisciplinarity

The process of identifying and delving into the problem to solve

- This is an *interdisciplinary* phase
- Even if you have good knowledge in the fields of computer and data science...
- ... maybe you still miss domain knowledge that is fundamental to understand and model the problem

# Case Study: Brown Spot of European Pear

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
![](https://agricoltura.regione.emilia-romagna.it/fitosanitario/temi/avversita/schede/avversita-per-nome/immagini-e-documenti/maculatura-bruna-del-pero/sui-frutti-l2019area-necrotica-si-circonda-spesso-di-alone-rossastro)
:::
::::

#

![Emilia Romagna, Italy](https://github.com/user-attachments/assets/ad66fa16-fa65-450b-955e-37ab3bd67113)

> The company prepares a questionnaire on paper with around 100 questions, and one of the employees moves across Emilia-Romagna to ask questions to the farmers and collect their answers. 

In your opinion, what are the pros/cons of this solution?

#

> Once the employee has collected almost 100 questionnairs, the company company ask us to apply machine learning techniques to understand which environmental conditions could be related to the spreading of the fungus.

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

# References