---
format:
  revealjs: 
    footer: "Matteo Francia - Machine Learning - A.Y. 2024/25"
bibliography: refs.bib
---

{{< include _cover.md >}}

#

![Here to Help](https://imgs.xkcd.com/comics/here_to_help.png)

# CRISP-DM

:::: {.columns}

::: {.column width="60%"}

**CRISP-DM** (CRoss-Industry Standard Process for Data Mining) [@shearer2000crisp]

> a non-proprietary, documented, and freely available data mining model.
> 
> Developed by industry leaders with input from more than 200 data mining users [...] and service providers, CRISP-DM is an *industry-, tool-, and application-neutral* model.
>
> This model encourages best practices and offers organizations the structure needed to realize better, faster results from data mining.
>
> CRISP-DM organizes the data mining process into phases [...] that help organizations understand the data mining process and provide a road map to follow while planning and carrying out a data mining project.

:::
::: {.column width="40%"}

![CRISP-DM](https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/CRISP-DM_Process_Diagram.png/1280px-CRISP-DM_Process_Diagram.png)

:::
::::

---

:::: {.columns}
::: {.column width="60%"}

Arrows indicate the most important and frequent dependencies between the phases, while the outer circle symbolizes the cyclical nature of data mining itself and illustrates that the lessons learned during the data mining process and from the deployed solution can trigger new, often more focused business questions.

CRISP-DM breaks down the life cycle of a data mining project into six phases:

1. business understanding,
1. data understanding,
1. data preparation,
1. modeling,
1. evaluation,
1. and deployment.

:::
::: {.column width="40%"}

![CRISP-DM](https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/CRISP-DM_Process_Diagram.png/1280px-CRISP-DM_Process_Diagram.png)

:::
::::

# Disclaimer!

:::: {.columns}
::: {.column width="60%"}

The CRISPDM tells us that *we don't do machine learning for the sake of training machine learning models*

- We have real problems to solve and questions to answer
- A data scientist must understand the data and the domain before trying any model
- Machine learning is not a simple copy and paste of code
- Data mining/Machine learning is not a course on scikit-learn

:::
::: {.column width="40%"}

![](https://en.meming.world/images/en/a/a3/We_Don%27t_Do_That_Here.jpg)

:::
::::

# Glossary [@sammut2017encyclopedia]

:::: {.columns}

::: {.column width="60%"}

**Data**

> Facts and statistics collected together for reference or analysis.
>
> Synonyms: data point, observation, data sample, instance, tuple, etc.

**Dataset (data set)**

> A collection of data used for some specific purpose.

**Feature**

> Properties of things, ways that we, as humans, might describe them. 
>
> Synonyms: characteristic; attribute; property; trait, etc.

**(Database) Query**

> A request for information

**Query Language** [@liu2009encyclopedia]

> A query language (e.g. SQL) is a specialized programming language for searching and changing the contents of a database. 

:::
::: {.column width="40%"}

![](https://github.com/user-attachments/assets/6b3f38bf-1a0f-4979-b141-854508d5faa9)

:::
::::

# References