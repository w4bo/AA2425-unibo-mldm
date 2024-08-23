---
author: Matteo Francia
title: Machine Learning and Data Mining (Module 2)
subtitle: Data understanding
---

# Data understanding

The data understanding phase involves four steps, including the collection of initial data, the description of data, the exploration of data, and the verification of data quality.

# Data collection (or acquisition)

Data collection is the process of gathering and measuring information on targeted variables in an established system

- The goal is to capture evidence that allows data analysis to formulate credible answers to the questions that have been posed

Here a data analyst acquires the necessary data, including loading and integrating this data if necessary.

- The analyst should make sure to report problems and solutions to aid with future replications of the project.
- For instance, data may have to be collected from several different sources, and some of these sources may have a lag time.

The analyst then proceeds to

- increase familiarity with the data,
- to identify data quality problems, to discover initial insights into the data,
- or to detect interesting subsets to form hypotheses about hidden information.

---

Several *biases* can occur:

- **Selection**: the sample used for data collection is not representative of the population being studied
- **Sampling**: Arises when certain segments of the population are more likely to be included or excluded from the sample
- **Response**: Occurs when participants in a survey or study provide inaccurate or misleading responses
- **Confirmation**: Refers to the tendency to favor information that confirms pre-existing beliefs or hypotheses while ignoring or discounting contradictory evidence
- **Cultural**: Occurs when data collection methods, survey questions, or study designs are culturally insensitive or fail to account for cultural differences
- **Time-Interval**: Occurs when the timing of data collection influences the results
- **Publication**: Tendency for researchers or journals to publish studies with positive or significant results while neglecting to publish studies with null or negative results
- ... and many others

--- 

Still today, this is one of the most important steps for many companies:

- «Data is the new oil of the Digital Economy»
- Indeed, there are several disciplines focusing on data (Data Science, Data Mining, Big data, ...)
- However, acquiring data is a time-consuming, investment and knowledge-intensive process
- In Europe (but now in many areas of the world), there can be problems related to privacy
    - When is it "right" to protect privacy? When does it become a limit?

Plus,

- You should consider a tradeoff between time/costs
- How much is *enough*?

---

Rule of thumb: one in ten/twenty [@chowdhury2020variable]

> There is no set rule as to the number of variables to include in a prediction model as it often depends on several factors. The ‘one in ten rule’, a rule that stipulates for how many variables/parameters can be estimated from a data set, is quite popular in traditional clinical prediction modelling strategy (eg, logistic regression and survival models). According to this rule, one variable can be considered in a model for every 10 events

## Public Datasets

We can get data mainly in two ways:

1. By using publicly available data (datasets or databases) → someone collected them for us!
    - They can be free or for a fee
    - The quality of the data made available must be checked
1. By acquiring a new set of data, but why?
    - It is not certain that public data well represent the problem we want to solve
    - We want to acquire specific data and thus generate specific expertise for the company (know-how)
    - We are forced to acquire data that due to their sensitive nature would not otherwise be available (privacy issues)
    - The company we work for already has a data collection process that we can use

Many universities publicly release their datasets:

- There are no requirements related to profit or non-disclosure agreement (NDA)
  - It is a consolidated practice in the world of research
  - It is the basis of the scientific method, in particular for the reproducibility of the results obtained
  - I release my data so that others can conduct my own experiments and verify my results
  - Examples: [https://www.image-net.org/](https://www.image-net.org/) 

Some platforms make datasets available for competitions, such as [Kaggle](https://www.kaggle.com/datasets) and [others](https://medium.datadriveninvestor.com/kaggle-data-science-platform-alternatives-for-competitions-and-research-cbe051596e62) 

## Acquisition of a new dataset

Acquiring a new dataset is usually a costly process!

- Investment of time and money for:
  - Programming or learning to use an acquisition tool
  - Handling of large amounts of data
  - Testing to find any bugs that could compromise the success of the acquisition
    - Unfortunately, we often notice them at the end of the process
  - Acquire new hardware for data collection and storage

- It is necessary to carefully consider whether it is appropriate to acquire a new dataset.
  - Considerations not only in engineering, but also in management and economics.
  - Future needs must be foreseen in advance.

## Data Annotation

NB: acquiring a new dataset does not mean acquiring only new data!

Indeed, one of the most relevant aspects is the annotation of the data

- The specific annotation is usually called "label" and is the (semantic) content of the data.
- The label depends on the problem we want to solve and can be numerical or categorical
- Examples:
  - A person's height prediction → data: joint lengths, label: height (cm)
  - Pedestrian Detection → data: images, label: presence of a pedestrian (yes/no)
  - Pedestrian Localization → data: images, label: position of the pedestrain (x, y, w, h)
  - Audio classification numbers → data: audio sequences, label: number («five»)

A single data is therefore defined as annotated if it is associated with a label

- Data collected without correct and timely annotation is often useless
- However, it is also possible to "extract knowledge" from un-annotated data through, for instance, clustering

## Data Annotation Process

The data annotation process can take place in several ways:

- *Manual*: each data is manually annotated
  - Long and expensive process
  - The quality of the annotations is usually controllable and high
  - This is not always an applicable process (for example, is it possible to annotate a dataset with 1M of images?)
- *Automatic*: each data is automatically annotated, using specific tools
  - It is based on particular a priori knowledge (for example, all images acquired in a dog shelter depict dogs).
  - The quality of the annotations is not always easily controlled
- *Third parties*: all data is noted by a third party
  - Free of charge: this is the case, for example, in which users barter the free use of some platform with the transfer of their annotated data (for example, photos uploaded - to Facebook accompanied by information regarding the content, the position of the face, or scene acquired).
  - Paid: there are platforms where is possible to purchase annotation time from third parties (often from "developing countries"). Example: Amazon Mechanical Turk

## [Amazon Mechanical Turk](https://www.mturk.com/)

![Amazon Mechanical Turk](https://github.com/user-attachments/assets/4b272c03-7fca-4338-a112-02859d5cfe70)


## Different Ways of Learning

:::: {.columns}

::: {.column width="65%"}

We define different types of learning depending on data annotation:

- *Annotated data* → Supervised Learning
  - One of the most studied types that allows to obtain the best results

- *Not annotated data* → Unsupervised Learning
  - Results that can be obtained are usually worse than the previous case

- *Partially annotated data* → Semi-Supervised Learning

Specific algorithms correspond to each of these areas

- Best performances are usually obtained with supervised trained algorithms
- We will mainly work on fully annotated data → Supervised Learning

:::
::: {.column width="35%"}

![Fully annotated](https://github.com/user-attachments/assets/50c6092b-43cd-4dbe-95c1-c0d9494803e6)

![Partially annotated](https://github.com/user-attachments/assets/e6d4832d-902c-49c3-8c62-a1948517bb7e)

:::
::::

## Open and Closed Sets

Last aspect to be defined relating to data annotation: **do we know all annotations**?

*Closed Set*: it is assumed that the pattern to be classified belongs to one of the known classes.

- The most common case in machine learning benchmarks
- Ideal condition, but not always suitable for real-world systems

*Open Set*: the patterns to be classified can belong to none of known classes. 

- More realistic condition, but more challenging
- Example: classify all fruits into {pears, bananas}

Two possible solutions to the open set problem:

- An additional fictitious class is added to the classes ("the rest of the world", "unknown")
  - The so-called "negative examples" are added to the training set
- You allow the system not to assign the pattern
  - A threshold is defined and the pattern is assigned to the most likely class only when the probability is higher than the threshold

## Common Problems in Data Collection

Companies usually face common problems: 

- The business process produces huge amounts of data
  - It is almost impossible to acquire all the data
  - Also, physical limitations when the data stream is bigger that the storing capacity
  - Usually, it is necessary to choose which ones to store
- Sometimes companies have a lot of "old" data in their databases or information systems: 
  - They don't know what to do with it
  - Data re-collection on existing data (since data must be clean or something similar)
- In many business processes it is unclear understanding:
  - Which data is possible to collect (also due to privacy issues)
  - Which data is (really) useful for the business

# Describe the Data

During this step, the data analyst examines the "gross" or "surface" properties of the acquired data and reports on the results, examining issues such as the format of the data, the quantity of the data, the number of records and fields in each table, the identities of the fields, and any other surface features of the data.

- The key question to ask is: Does the data acquired satisfy the relevant requirements?
  - For instance, if age is an important field and the data does not reflect the entire age range, it may be wise to collect a different set of data.
- This step also provides a basic understanding of the data on which subsequent steps will build.

# Explore the Data

This task tackles the data mining questions, which can be addressed using querying, visualization, and reporting.

- For instance, a data analyst may query the data to discover the types of products that purchasers in a particular income group usually buy.
- Or the analyst may run a visualization analysis to uncover potential fraud patterns.
- The data analyst should then create a data exploration report that outlines first findings, or an initial hypothesis, and the potential impact on the remainder of the project

# Verify Data Quality

At this point, the analyst examines the quality of the data, addressing questions such as:

- Is the data complete? Missing values often occur, particularly if the data was collected across long periods of time.
- Some common items to check include: missing attributes and blank fields;
- whether all possible values are represented;
- the plausibility of values;
- the spelling of values;
- and whether attributes with different values have similar meanings (e.g., low fat, diet).

The data analyst also should review any attributes that may give answers that conflict with common sense (e.g., teenagers with high income).

# References