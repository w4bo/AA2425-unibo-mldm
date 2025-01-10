---
subtitle: "Fairness"
---

# Fairness

> **Fairness**
>
> impartial and just treatment or behaviour without favouritism or discrimination.

Machine learning algorithms (e.g., classifiers) make predictions about new data *by training on old data*.

- These predictions may be hiring or not hiring, good or bad credit, and so on.

However, the training data may contain patterns such as a higher rate of good outcomes for members of certain groups.

This is quantified by the "80% rule" of disparate impact, which is a legal measure and definition of bias.

- $\frac{\textup{Rate of unprivileged applicants receiving good outcome}}{\textup{Rate of privileged applicants receiving good outcome}} < 0.8$

It is ethically and legally undesirable for a classifier to learn these biases from the data.

We propose two methods of modifying data, called Combinatorial and Geometric repair. We test our repairs on three data sets.
Experiments show that our repairs perform favorably in terms of training classifiers that are both accurate and unbiased.

# Regulations

Regulation without enforcement is meaningless.
We have to go beyond obsession for regulation.

# Racism

Racism and AI: Bias from the past leads to bias in the future.
https://www.ohchr.org/en/stories/2024/07/racism-and-ai-bias-past-leads-bias-future

# Datasets

Can we change our datasets?
Images on the internet are even more sexist than texts.
You go back in time, how would that community be like when taking selfies.

From training to teaching AI

*Training*

- Repetition and optimization
- Reproductive approach

*Teaching*

- Dialogic and social processes
- Reflexive approach
- Data as communicative practices
- Data encodes values, contexts, and cultures
- Goal of diversification

De-biasing datasets

- Should be continuous over time since society is changing.
- Public institutions should push towards open data, but what about the private sector?
    - Burden of the proof should fall on the provider.
    - Privacy was dealt with consent, do not make the same mistake again.

CVs

- Identity & agency: is it descriptive or discriminative?
- Networks of Visibility: de-anonymization based on connections

GeoAI

# Computational fairness

*Fairness* comes from the law (article 21 of the fundamental rights)

Discrimination, different treatments

- Direct
- Indirect discrimination: something that seems neutral but applies discrimination
- Intersectional? discrimination

*Computational fairness*: algorithms should not perform any discrimination.

- We need to quantify the level of (un)fairness

*Multidisciplinary* approach is a must, at least three perspectives: legal, social, and technical

- Legal: we have a lot of regulations such as AI acts, article 21, national and sectorial regulations
- How do we move this into something quantifiable?
    - Which metrics should we use?
    - Metrics should be legally sound in terms of laws.
    - Metrics conflict with each other
    - Metrics are threshold-based: who defines the thresholds?

Fairness is contextual to the application, an application is FAIR inside some boundaries but not others.

- How do we define the boundaries?
    - Participative design (see: holistic social-legal-technical methodology for AI fairness)
- Boundaries can be based on a context

# Abstention mechanism

The abstention option is an additional function for classifiers to abstain the model from making a prediction when it is not sure enough.

- You have a confidence function (such as softmax layer)
- We can select coverage (how much of input data I want to cover)

Many systems usually add bias to the final result.

- Minority classes have reduced performance, and classification is rejected
- We can inject an interpretable model to understand when this problem occurs
    - Interpretable rejection policy to avoid opaque rejection
    - We can do situation testing instance by instance
    - Adult dataset to check race and gender

# Fair division

Distributing resources in a way that each perceives the division as fair

- Some things are indivisible

*Comparison-based*: no one envies anyone else (but I need to know all the assignments)

- Envy free (up to 1 good)

*Threshold-based*

- Proportionality (up to 1 good)

Computational feasibility is NP-complete
What happens if there is no fair solution?

Social impact metric

- Find a fair solution and maximize its social impact (Price of Fairness = best possible solution / best social impact of a fair solution)
- Individual vs group fairness: the goal is also to counter historical disadvantages (this is about pink quotas)
    - You can weigh a group of people more than others when computing fairness
- Sandra Buttock paper

# AI Act

How are we implementing the AI Act?

- A lot of the requirements are not clear about their implementation
- Difficulty in terms of language (law and computer science backgrounds)

Are we also considering that not using AI sometimes is the right solution?

- E.g., do not always increase the size of the gun, but use the simplest working tools

# Privacy

Privacy hinders AI.
Fairness is the only tools to safeguard people's privacy (GDPR).

There is no technological solution to a problem that is political

Companies have created AI governance.
We need a common ground between technicians and humanistic people.
You cannot use the same metric in any scenarios
For a lot of companies AI means buying off the shelf products.

Fairness and transparency about processes goes beyond GDPR (since GDPR is only about personal data).
But if the task is only preparatory, that is not high risk, and many constraints can be dropped.
For most companies, AI is not about developing but buying.

# Social scoring

# LLMs

# Fairness and companies

Is there a chief AI office?
Fairness and explainability.
Fairness is part of the development and whole lifecycle of the project.
It is important to position wrt the AI act.

# Papers

1. Bias preservation in machine learning: the legality of fairness metrics under EU non-discrimination law.
1. Why fairness cannot be automated: Bridging the gap between EU non-discrimination law and AI.
1. Compatibility of Fairness Metrics with EU Non-Discrimination Laws: Demographic Parity & Conditional Demographic Disparity.
1. Distrust by design.
    - Accountability: how can we deal with whose fault is?
1. Holigarcs book.