---
format:
  revealjs: 
    footer: "Matteo Francia - Machine Learning - A.Y. 2024/25"
bibliography: refs.bib
---

# Case Study: Data Science and Automation

Consider the following task.

:::: {.columns}
::: {.column width="30%"}

<div style="font-size:15px!important">

| productDepartment   | gender | quantity |
|---------------------|--------|----------|
| Produce             | M      | 19076    |
| Produce             | F      | 18711    |
| Alcoholic Beverages | F      | 16939    |
| Snack Foods         | M      | 16859    |
| Snack Foods         | F      | 16186    |
| Alcoholic Beverages | M      | 15399    |
| Household           | M      | 13757    |
| Frozen Foods        | M      | 13644    |
| Household           | F      | 13278    |
| Frozen Foods        | F      | 13011    |
| Baking Goods        | M      | 10404    |
| Baking Goods        | F      | 9841     |
| ...                 | ...    | ...      |
| Dairy               | M      | 8571     |
| Dairy               | F      | 8500     |
| Beverages           | M      | 6811     |
| Beverages           | F      | 6775     |
| Seafood             | F      | 947      |
| Seafood             | M      | 817      |
| Carousel            | M      | 473      |
| Carousel            | F      | 368      |

</div>

:::
::: {.column width="70%"}

> Given a query result, return insights describe the query result.
> 
> This task requires to:
> 
> - extract interesting patterns/insights,
> - rank them by their interest,
> - select the most interesting insights given a limited word/time budget.

How would you do that?

:::
::::

# Our solution: VOOL

For instance, this can has been done in VOOL [@DBLP:conf/adbis/FranciaGGR22] by:

1. applying existing ML techniques (modules) in a bag-of-task fashion,
2. let each module compute its own insight (in a range that is shared by all modules)
3. Compute a knapsack of the patterns extracted on time.

# LLMs

Generative AI and Large Language Models (LLMs) [@DBLP:conf/nips/BrownMRSKDNSSAA20] [@openai2023gpt4] have recently witnessed a huge hype even in the data science community.

- LLMs are autoregressive machine learning models that act as statistical next-word predictors [@bowman2023things] after being trained on huge datasets [@DBLP:conf/fat/BenderGMS21].

- Applications leveraging LLMs, such as ChatGPT, are usually oriented to general-purpose information retrieval and are not specific for extracting, ranking, and selecting the most interesting insights out of multidimensional query results.

LLMs are powerful tools for broad natural language applications, are they a good choice for data-intensive tasks as well?

# Data volume and cost

- Since multidimensional data usually contain sensitive business information, they are stored in private repositories (such as data warehouses) unknown to LLMs during their training.
- To feed data to an LLM, the main possibility is to use the prompt.
    -  Depending on the specific model, prompts have limits in the number of tokens shared between input and answer, with different models [having different limits (accessed on 2024-06-20)](https://help.openai.com/en/articles/4936856-what-are-tokens-and-how-to-count-them) and pricing
       -  The [OpenAI price calculator in Microsoft Azure (accessed 2024-06-20)](https://azure.microsoft.com/en-us/pricing/calculator/?service=openai-service) estimates that using GPT-4-32K costs around \$0.06 per $10^3$ input tokens and \$0.12 per $10^3$ output tokens, where 1000 tokens correspond to almost 750 words.
    - Prompting a table with $10^5$ tuples (if feasible at all) could easily reach the cost of several dollars per execution.
on input and output tokens.
- LLMs now allow users to attach files to the prompt, and some LLM-based applications can even extract succinct summaries from these files and use them in place of the whole file content. 
    - On the one hand, this can overcome the limits and cost of tokens.
    - On the other hand, if the summary process is incorrect, it will add errors and bias to the final answer.

# Running algorithms

- Algorithmic tasks such as SQL querying and data mining are better handled by DBMSs and query engines since
  - they are optimized for these types of operations (e.g., using R-trees to speed up clustering in Euclidean spaces);
  - their answers are correct, consistent, and reproducible;
  - they do not have hallucinations.

At the moment (2024), while (plain) LLMs have many strengths, they are not typically suitable for data-intensive tasks.

# LLM-based applications

Several LLM-based applications have been deployed to overcome these limitations.

- There are applications for data analysis that are capable of generating and interpreting code (mainly Python), analyzing datasets, and supporting data scientists in doing data elaborations and analyses.
    - Applications can be directly deployed by LLM providers (e.g., Data Analyst [@dataanalyst] by ChatGPT)
    - or can be deployed by third-party users (e.g., Data Scientist [@datascientist]).
- Intuitively, these applications allow the underlying LLM to invoke functions from external libraries when appropriate (e.g., Python's pandas, scikit-learn, and scipy) and to generate and execute external code.
- Data Scientists and Data Analyst are indeed closer to VOOL than plain LLMs, but they bear the following differences with VOOL:

# Applying LLMs to query results

:::: {.columns}
::: {.column width="30%"}

| productDepartment   | gender | quantity |
|---------------------|--------|----------|
| Produce             | M      | 19076    |
| Produce             | F      | 18711    |
| Alcoholic Beverages | F      | 16939    |
| Snack Foods         | M      | 16859    |
| Snack Foods         | F      | 16186    |
| Alcoholic Beverages | M      | 15399    |
| Household           | M      | 13757    |
| Frozen Foods        | M      | 13644    |
| Household           | F      | 13278    |
| Frozen Foods        | F      | 13011    |
| Baking Goods        | M      | 10404    |
| Baking Goods        | F      | 9841     |
| ...                 | ...    | ...      |
| Dairy               | M      | 8571     |
| Dairy               | F      | 8500     |
| Beverages           | M      | 6811     |
| Beverages           | F      | 6775     |
| Seafood             | F      | 947      |
| Seafood             | M      | 817      |
| Carousel            | M      | 473      |
| Carousel            | F      | 368      |
:::
::: {.column width="70%"}

![Returned insights](https://github.com/user-attachments/assets/9ec3dbd8-a7ef-49f9-8d78-df8cf96c238b)

:::
::::

# Additional Issues

**Interpretability.**

In LLMs, the process that leads to the computation of the insights and their interest remains hidden and not interpretable to the end-user, who is not aware of how insights are extracted (e.g., if the model has added some distortion to the data before applying a machine learning model).

**Domain-specific data.**

The insights returned by LLM-based applications strongly depend on the context since LLMs also leverage domain knowledge for their ``reasoning'';  hence, it is usually recommended to use semantic-rich column names to enhance data analyses.

- On the one hand, this domain knowledge can introduce bias and inconsistencies with the data at hand.
- On the other hand, for very specific domains and data types, a lack of knowledge can cause issues in the interpretation of the result.

For instance, in precision agriculture, having low temperatures could be bad for the production rates, but good in terms of pest control and water management.

**Domain-specific modules.**

Should additional modules be necessary to produce domain-specific insights, such modules should be embedded into the LLM through prompting or calls to (external) third-party libraries.

# Additional Issues

We conclude by observing that LLMs are also exposed to a couple of additional issues:

*Libraries*

- LLMs produce good results with well-known libraries such as Python's scikit-learn and pandas.
- When less-known libraries are required, LLMs can fail to produce the necessary code.

*Development*

- Many LLM-based applications are commercial (or handcrafted) and not associated with research papers.
- Hence, following their development and deeply understanding their capabilities is often hard, also due to a lack of documentation.
    - On the one hand, this makes non-empirical comparisons between LLMs unfeasible.
    - On the other, exactly reproducing the results of empirical tests may be impossible.
