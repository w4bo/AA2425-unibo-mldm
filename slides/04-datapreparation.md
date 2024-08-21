---
bibliography: refs.bib
---

# Data Preparation

The data preparation phase covers all activities to construct the final data set or the data that will be fed into the modeling tool(s) from the initial raw data. Tasks include table, record, and attribute selection, as well as transformation and cleaning of data for modeling tools. The five steps in data preparation are the selection of data, the cleansing of data, the construction of data, the integration of data, and the formatting of data. 
Select Data

Deciding on the data that will be used for the analysis is based on several criteria, including its relevance to the data mining goals, as well as quality and technical constraints such as limits on data volume or data types. For instance, while an individual’s address may be used to determine which region that individual is from, the actual street address data can likely be eliminated to reduce the amount of data that must be evaluated. Part of the data selection process should involve explaining why certain data was included or excluded. It is also a good idea to decide if one or more attributes are more important than others are.

---

Data (preparation) preprocessing plays a key role in a data analytics process and avoids “Garbage in, garbage out” [@giovanelli2021effective]

- A broad range of activities; from correcting errors to selecting the most relevant features
- There are no pre-defined rules on the impact of pre-processing transformations
- Data scientists cannot easily foresee the impact of pipeline prototypes

“Garbage in, garbage out” is particularly applicable to data mining and machine learning

- Out-of-range values (e.g., Income: −100)
- Impossible data combinations (e.g., Exam mark: 15, Exam result: Passed) 
- Missing values
- Inconsistent data among multiple sources
- More?

# Clean Data

Without clean data, the results of a data mining analysis are in question. Thus at this stage, the data analyst must either select clean subsets of data or incorporate more ambitious techniques such as estimating missing data through modeling analyses. At this point, data analysts should make sure they outline how they addressed each quality problem reported in the earlier “Verify Data Quality” step.

# Construct Data

After the data is cleaned, the data analyst should undertake data preparation operations such as developing entirely new records or producing derived attributes. An example of a new record would be the creation of an empty purchase record for customers who made no purchases during the past year. Derived attributes, in contrast, are new attributes that are constructed from existing attributes, such as Area = Length x Width. These derived attributes should only be added if they ease the model process or facilitate the modeling algorithm, not just to reduce the number of input attributes. For instance, perhaps “income per head” is a better/easier attribute to use than “income per household.” Another type of derived attribute is single-attribute transformations, usually performed to fit the needs of the modeling tools. These transformations may be necessary to transform ranges to symbolic fields (e.g., ages to age bands), or symbolic fields (“definitely yes,” “yes,” “don’t know,” “no”) to numeric values. Modeling tools or algorithms often require these transformations.

# Integrate Data

Integrating data involves combining information from multiple tables or records to create new records or values. With table-based data, an analyst can join two or more tables that have different information about the same objects. For instance, a retail chain has one table with information about each store’s general characteristics (e.g., floor space, type of mall), another table with summarized sales data (e.g., profit, percent change in sales from previous year), and another table with information about the demographics of the surrounding area. Each of these tables contains one record for each store. These tables can be merged together into a new table with one record for each store, combining fields from the source tables.

Data integration also covers aggregations. Aggregations refer to operations where new values are computed by summarizing information from multiple records and/or tables. For example, an aggregation could include converting a table of customer purchases, where there is one record for each purchase, into a new table where there is one record for each customer. The table’s fields could include the number of purchases, the average purchase amount, the percent of orders charged to credit cards, the percent of items under promotion, etc.

# Format Data

In some cases, the data analyst will change the format or design of the data. These changes might be simple—for example, removing illegal characters from strings or trimming them to a maximum length—or they may be more complex, such as those involving a reorganization of the information. Sometimes these changes are needed to make the data suitable for a specific modeling tool. In other instances, the changes are needed to pose the necessary data mining questions.

# Data variety

![image](https://miro.medium.com/v2/resize:fit:1100/format:webp/1*YejjU_69ffDyrC0z-X9jYQ.jpeg)

# Main Python Libraries

Considering `(volume, variety, velocity, veracity)`, we focus on the `(*, structured, batch, *)` scenario

### Relational data

**Relational data** are usually collected in **tabular** format

- Each row is an **observation** (instance or tuple)
    - An object of the analysis
    - E.g., a product for market basket analysis
- Each column is an **attribute** (or feature) characterizing each object
    - All values within a column have the same type (i.e., all values belong to the same attribute domain)
    - E.g., the attributes ID (int), ProductName (str), or Price (float)
    
We need proper tools (e.g., libraries) to manage such data

![1712676223218](https://github.com/w4bo/img-dump/assets/18005592/72869b67-6a16-4a5a-a8a4-8d8e10c2633d)

# Pandas

**Pandas** is the shorthand for 'Python and Data Analysis'

- It provides a rich set of features for exploring and manipulating data
- https://pandas.pydata.org/

pandas (Python) is a solution for the manipulation of relational data

- Two main data types: Series (e.g., temporal series) and DataFrame (e.g., table)
- Support to SQL-like operations (join/merge, aggregation, etc.)
- Imputation of missing values
- Manipulation of data shape
- By convention, the package pandas is imported as “pd”
