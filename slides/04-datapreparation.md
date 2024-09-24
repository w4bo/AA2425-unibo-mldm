---
subtitle: Data Preparation
---

# Data Preparation (aka *data pre-processing*)

The **data preparation** phase covers all activities to construct the dataset that will be fed into the modeling tools from the initial data

![Data pipeline](./img/datapreprocessing/pipeline.svg)

It plays a key role in a data analytics process and *avoids "garbage in, garbage out"*

- *A broad range of activities*; from correcting errors to selecting the most relevant features
    - Out-of-range values (e.g., Income: −100)
    - Impossible data combinations (e.g., `Exam mark`: 15, `Exam result`: Passed) 
    - Missing values
    - Inconsistent data among multiple sources
- There are *no pre-defined rules* on the impact of pre-processing transformations
- Data scientists *cannot easily foresee the impact of pipeline prototypes*

#

Data pre-processing includes [@shearer2000crisp] data 

1. *selection*
1. *cleansing*
1. *construction*
1. *integration*
1. *formatting*

# Select Data

Deciding on the data that will be used for the analysis is based on several criteria, including

- its relevance to the data mining goals
- quality and technical constraints such as limits on data volume or data types

Part of the data selection process should involve explaining why certain data was included or excluded

- It is also a good idea to decide if one or more attributes are more important than others are

> For instance, while an individual's address may be used to determine which region that individual is from, the actual street address data can likely be eliminated to reduce the amount of data that must be evaluated.

# Clean Data

*Without clean data, the results of a data mining analysis are in question.*

The data analyst must

- select clean subsets of data or incorporate techniques such as estimating missing data through modeling analyses
- make sure they outline how they addressed each quality problem reported in the earlier "Verify Data Quality" step

# Construct Data

The data analyst could undertake operations such as developing entirely new records or producing derived attributes.

- *Derived attributes should only be added if they ease the modeling algorithm*
    - ... and not just to reduce the number of input attributes
- Transformations may be necessary to *transform ranges to symbolic fields* (e.g., ages to age bands)
    - ... *or symbolic fields ("definitely yes", "yes", "don't know", "no") to numeric values*

> A new record would be the creation of an empty purchase record for customers who made no purchases during the past year.
>
> A derived attribute is `area` = `length` x `width`.
>
> A derived attribute is `income per head` which could be easier to use than `income per household`. 

# Integrate Data

**Integration** involves *combining information from multiple tables* or records to create new records or values.

- With table-based data, an analyst can join two or more tables that have different information about the same objects.

> For instance, a retail chain has one table with information about each store's general characteristics (e.g., floor space, type of mall), another table with summarized sales data (e.g., profit, percent change in sales from the previous year), and another table with information about the demographics of the surrounding area.
>
> Each of these tables contains one record for each store.
>
> These tables can be merged together into a new table with one record for each store, combining fields from the source tables.

# 

Data integration also covers *aggregations*.

- Aggregation computes new values by summarizing information from multiple records and/or tables.

> For example, an aggregation could include converting a table of customer purchases, where there is one record for each purchase, into a new table where there is one record for each customer.
>
> The table's fields could include the number of purchases, the average purchase amount, the percentage of orders charged to credit cards, the percentage of items under promotion, etc.

# Format Data

In some cases, the data analyst will *change the format of the data*.

- Sometimes these changes are needed to make the data suitable for a specific modeling tool.
- In other instances, the changes are needed to pose the necessary data mining questions.

Examples:

- Simple: removing illegal characters from strings or trimming them to a maximum length
- More complex: reorganization of the information (e.g., *from normalized to flat tables*)

# Data variety

![image](https://miro.medium.com/v2/resize:fit:1100/format:webp/1*YejjU_69ffDyrC0z-X9jYQ.jpeg)

# Main Python Libraries

Considering `(volume, variety, velocity, veracity)`, we focus on the `(*, structured, batch, *)` scenario

:::: {.columns}
::: {.column width="65%"}

**Relational data** are usually collected in **tabular** format (e.g., csv files)

- Each row is an **observation** (instance or tuple)
    - An object of the analysis
    - E.g., a product for market basket analysis
- Each column is an **attribute** (or feature) characterizing each object
    - All values within a column have the same type (i.e., all values belong to the same attribute domain)
    - E.g., the attributes ID (int), ProductName (str), or Price (float)
    
We need proper tools (e.g., libraries) to manage such data

:::
::: {.column width="35%"}

![Library ecosystem](https://github.com/w4bo/img-dump/assets/18005592/72869b67-6a16-4a5a-a8a4-8d8e10c2633d)

:::
::::

# References