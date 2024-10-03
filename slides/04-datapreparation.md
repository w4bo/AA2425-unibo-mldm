---
subtitle: Data Preparation
---

# Data Preparation (aka *data pre-processing*)

The **data preparation** phase covers all activities to construct the dataset fed into the modeling tools from the initial data.

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

Part of the data selection process should involve explaining why certain data was included or excluded.

- It is also a good idea to decide if one or more attributes are more important than others

> For instance, while an individual's address may be used to determine which region that individual is from, the actual street address data can likely be eliminated to reduce the amount of data that must be evaluated.

# Clean Data (or data cleansing)

*Without clean data, the results of a data mining analysis are in question*.

The data analyst must

- select clean subsets of data or incorporate techniques such as estimating missing data through modeling analyses
- make sure they outline how they addressed each quality problem reported in the earlier "Verify Data Quality" step

# Imputation of missing values

**Imputation** is the process of replacing missing data with substituted values.

*Listwise deletion* (complete case) deletes data with missing values

- If data are missing at random, listwise deletion does not add any bias, but it decreases the sample size
- Otherwise, listwise deletion will introduce bias because the remaining data are not representative of the original sample

*Pairwise deletion* deletes data when it is missing a variable required for a particular analysis

- ... but includes that data in analyses for which all required variables are present

*Hot-deck imputation*: the information donors come from the same dataset as the recipients

- One form of hot-deck imputation is called "last observation carried forward"
    - Sort a dataset according to any number of variables, thus creating an ordered dataset
    - Finds a missing value and uses the value immediately before the data that are missing to impute the missing value

*Cold-deck imputation* replaces missing values with values from similar data in different datasets

*Mean substitution* replaces missing values with the mean of that variable for all other cases

- Mean imputation attenuates any correlations involving the variable(s) that are imputed
    - There is no relationship between the imputed variable and any other measured variables.
    - Mean imputation can be carried out within classes (i.e. categories such as gender)

# Construct data

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

# Feature encoding

**Encoding** is the process of converting categorical variables into numeric features.

- Most machine learning algorithms, like linear regression, support vector machines, and logistic regression, require input data to be numeric because they use numerical computations to learn the model.
- These algorithms are not inherently capable of interpreting categorical data.
- Some implementations of decision tree-based algorithms can directly handle categorical data.

Categorical features can be *nominal* or *ordinal*.

- *Nominal features* (e.g., colors) don’t have a defined ranking or inherent order.
- *Ordinal features* (e.g., size) have an inherent order or ranking

*One hot encoding* and *ordinal encoding* are the most common methods to transform categorical variables into numerical features. 

# Feature encoding: ordinal encoding

**Ordinal encoding** replaces each category with an integer value.

- These numbers are, in general, assigned arbitrarily. 
- Ordinal encoding is a preferred option when the categorical variable has an inherent order.
- Examples include the variable size, with values ‘small’, ‘medium’, and ‘large’.

# Feature encoding: one-hot encoding

**One-hot encoding (OHE)** replaces categorical variables by *a set of binary variables*

- each representing one of the unique categories in the variable.
- The binary variable takes the value 1 if the observation shows the category, or alternatively, 0.

One hot encoding is particularly suitable for linear models because it treats each category independently.

- However, OHE increases the dimensionality of the dataset, as it adds a new variable per category. 
- It may not be suitable for encoding high cardinality features, as it can drastically increase the dimensionality of the dataset.
- To prevent a massive increase of the feature space, we can one-hot encode only the most frequent categories in the variable.
- ... less frequent values are treated collectively and represented as 0s in all the binary variables.

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

# Data integration

**Data integration** combines data residing in different sources and provides users with a unified view of them.

*Primary key-based integration* combines multiple sources based on matching unique identifiers (primary keys).

- This method works when both datasets have a well-defined and consistent schema with common key fields.

*Semantic integration* focuses on understanding the meaning of the data from different sources to combine it effectively.

- The goal is to merge data that may use different names, terminologies, or structures to describe the same concepts.
- Data is integrated based on semantic meaning rather than structural similarities.
- It involves the use of ontologies or data dictionaries to map similar concepts across datasets, ensuring consistency.
- It requires understanding the context, meaning, and relationships within the data.
    - For instance, spatial data can be easily integrated into maps

#

| **Aspect**            | **Semantic Integration**                                  | **Primary Key-based Integration**                      |
|-----------------------|-----------------------------------------------------------|-------------------------------------------------------|
| *Approach*            | Based on meaning and understanding of the data.           | Based on matching unique keys (e.g., customer ID).     |
| *Suitability*         | Ideal for heterogeneous data with different terminologies or structures. | Ideal when datasets have common, well-defined keys.    |
| *Complexity*          | More complex due to the need to interpret and align meanings. | Simpler, relies on exact key matches.                 |
| *Flexibility*         | Can integrate data with different schemas or representations. | Less flexible, requires shared primary key fields.     |
| *Challenges*          | Requires mapping of concepts, and understanding of domain semantics. | Limited to datasets that share a key, difficult without common keys. |
| *Typical Tools*       | Ontologies, semantic data models, and dictionaries.        | Relational databases, SQL joins, foreign key relationships. |
| *Use Cases*           | Integrating data from different domains (e.g., healthcare and education). | Merging data with unique keys (e.g., employee IDs).    |

# Format Data

In some cases, the data analyst will *change the format of the data*.

- Sometimes these changes are needed to make the data suitable for a specific modeling tool.
- In other instances, the changes are needed to pose the necessary data mining questions.

![image](https://miro.medium.com/v2/resize:fit:1100/format:webp/1*YejjU_69ffDyrC0z-X9jYQ.jpeg)

Examples:

- Simple: removing illegal characters from strings or trimming them to a maximum length
- More complex: reorganization of the information (e.g., *from normalized to flat tables*)

# Dimensionality reduction

**Dimensionality reduction** is the transformation of data from a high-dimensional space into a low-dimensional space

- Working in high-dimensional spaces can be undesirable for many reasons
- Raw data are often sparse as a consequence of the curse of dimensionality
- Dimensionality reduction can be used for noise reduction, data visualization, cluster analysis, or as an intermediate step to facilitate other analyses

The main approaches can also be divided into *feature selection* and *feature extraction*.

# Feature selection

:::: {.columns}

::: {.column width="65%"}

**Feature selection** approaches try to find a subset of the input variables

*Filter* strategy: select variables regardless of the model

- Based only on general features like the correlation with the variable to predict

*Wrapper* strategy

- Methods include forward selection, backward elimination, and exhaustive search

*Embedded* strategy

- Add/remove features while building the model based on prediction errors
- A learning algorithm takes advantage of its own variable selection process and performs feature selection and classification simultaneously


:::

::: {.column width="34%"}

![Filter](https://upload.wikimedia.org/wikipedia/commons/2/2c/Filter_Methode.png)

![Wrapper](https://upload.wikimedia.org/wikipedia/commons/0/04/Feature_selection_Wrapper_Method.png)

![Embedded](https://upload.wikimedia.org/wikipedia/commons/b/bf/Feature_selection_Embedded_Method.png)

:::
::::

# Feature selection: Filter strategy

*Variance threshold*

- Use a variance threshold to remove any features that have little to no variation in their values.
- Features with low variance do not contribute much information to a model.
- Since variance can only be calculated on numeric values, this method only works on quantitative features.

*Pearson's correlation*: measures the linear relationship between two numeric variables

- A coefficient close to 1 represents a positive correlation, -1 a negative correlation, and 0 no correlation
- Correlation between features:
    - When two features are highly correlated with one another, then keeping just one to be used in the model will be enough because otherwise, they provide duplicate information.
    - The second variable would only be redundant and serve to contribute unnecessary noise.
- Correlation between feature and target:
    - If a feature is not very correlated with the target variable, such as having a coefficient of between -0.3 and 0.3, then it may not be very predictive and can potentially be filtered out.

# Feature selection: Wrapper strategy

*Backward elimination*

We start with the full model (including all the independent variables) and then incrementally remove the most insignificant feature.

This process repeats again and again until we have the final set of significant features.

1. Choose a significance level (e.g., SL = 0.05 with a 95% confidence).
1. Fit a full model including all the features.
1. Consider the feature with the highest p-value.
    - If the p-value < terminate the process.
1. Remove the feature which is under consideration.
1. Fit a model without this feature. Repeat the entire process from Step 3.

# Feature selection: Embedded strategy

:::: {.columns}

::: {.column width="65%"}

*Least Absolute Shrinkage and Selection Operator (LASSO)*

- The objective of linear regression is typically to minimize the sum of squared errors (SSE) between predicted and actual values.
- Lasso adds a penalty proportional to the absolute values of the coefficients.

$min(\sum_{i=1}^n​(y_i​ - \hat{y}_i​)^2+ \lambda \sum_{j=1}^p​ ∣\beta_j​∣)$

- $y_i$​ is the actual value, $\hat{y}_i$​ is the predicted value,
- $\beta_j$​ are the coefficients of the model,
- $\lambda$ is the regularization parameter controlling the penalty's strength.

Lasso performs automatic feature selection. 

- By shrinking some coefficients to 0, Lasso removes irrelevant features

The optimal $\lambda$ can be determined with cross-validation techniques.

:::

::: {.column width="34%"}

![](https://www.ibm.com/content/dam/connectedassets-adobe-cms/worldwide-content/creative-assets/s-migr/ul/g/d2/a9/4-1_model-complexity-bias-variance.component.complex-narrative-xl.ts=1723041862502.png/content/adobe-cms/us/en/topics/lasso-regression/jcr:content/root/table_of_contents/body/content_section_styled/content-section-body/complex_narrative_1723597861/items/content_group_1333297271/image)

:::
::::

# Feature extraction (or feature projection)

**Feature projection** transforms the data from the high-dimensional space to a space of fewer dimensions

- The data transformation may be linear, as in principal component analysis (PCA)
- ... but many nonlinear dimensionality reduction techniques also exist

*Principal component analysis (PCA)* is a linear dimensionality reduction technique.

- PCA aims to preserve as much of the data's variance as possible in fewer dimensions
- Variance measures of how much the data points differ from the mean of the dataset
- The data is linearly transformed onto a new coordinate system such that the directions (*principal components*) capturing the largest variation in the data can be easily identified
- The first principal component captures the highest variance, the second component captures the second highest, and so on.

Computing PCA

- PCA is sensitive to the scale of the data, the first step is usually to standardize the features (mean = 0, standard deviation = 1) to ensure that all features contribute equally to the analysis.
- Then, compute the covariance Matrix
    - Eigenvectors represent the directions of the principal components.
    - Eigenvalues represent the magnitude of variance in the direction of the corresponding eigenvector.
- The eigenvector with the largest eigenvalue is the first principal component, and so on.

# Overlapping with business intelligence and data warehousing

*ETL (Extract, Transform, Load)* is one of the most widely used data integration techniques in data warehousing.

- *Extract*: Pull data from multiple sources (e.g., databases, APIs, flat files).
- *Transform*: Clean, standardize, and transform the data into the desired format.
- *Load*: Load the transformed data into a target database or data warehouse.

*ELT (Extract, Load, Transform)* loads data into a storage system (like a data lake) and then transforms within the storage system.

# References