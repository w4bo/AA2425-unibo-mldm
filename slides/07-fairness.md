---
subtitle: "Fairness"
---

# Regulations

Regulation without enforcement is meaningless.
We have to go beyond obsession for regulation.

# Racism

Racism and AI: Bias from the past leads to bias in the future.
https://www.ohchr.org/en/stories/2024/07/racism-and-ai-bias-past-leads-bias-future

# Datasets

Can we change our datasets?
Images on the internet are even more sexist than texts.
You go back in time, how would that community be like when taking selfies

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

Debiasing datasets

- Should be continuous over time since society is changing

CVs

- Identity & agency: is it descriptive or discriminative?
- Networks of Visibility: deanonymization based on connections

GeoAI

# Computational fairness

*Fairness* comes from the law (article 21 of the fundamental rights)

Discrimination, different treatments

- Direct
- Indirect discrimination: something that seams neutral but applies discrimination 
- Intersectional? discrimination

*Computational fairness*: algorithms should not perform any kind of discrimination.

- We need to quantify the level of (un)fairness

*Multidisciplinary* approach is a must, at least three perspectives: legal, social, and technical

- Legal: we have lot of regulations such as AI acts, article 21, national and sectorial regulations
- How do we move this into something quantifiable?
    - Which metrics should we use?
    - Metrics should be legally sound in terms of laws.
    - Metrics are in conflict with each others
    - Metrics are threshold-based: who defines the thresholds?

Fairness is contextual to the application, an application is FAIR inside some boundaries both not other.

- How do we define the boundaries?
    - Participative design (see: holistic social-legal-technical methodology for AI fairness)
- Context can be based using a context

# Abstention mechanism

Abstention option is an additional function for classifier to abstain the model making a prediction when it not sure enough.

- You have a confidence function (such as softmax layer)
- We can select coverage (how much of input data I want to cover)

Many systems usually add bias in the final result.

- Minority classes have reduced performance, and classification is rejected
- We can inject an interpretable model to understand when this problem occurs
    - Interpretable rejection policy to avoid opaque rejection
    - We can do situation testing instance by instance
    - Adult dataset to check race and gender

# Fair division

Distributing resources in way that each perceives the division as fair

- Some things are indivisible

*Comparison-based*: no one envies anyone else (but I need to know all the assignments)

- Envy free (up to 1 good)

*Threshold-based*

- Proportionality (up to 1 good)

Computational feasibility is NP-complete
What happens if there is no fair solution?

Social impact metric

- Find fair solution and maximize social impact (Price of Fairness = best possible solution / best social impact of a fair solution)
- Individual vs group fairness: the goal is also to counter for historical disadvantages (this is about pink quotas)
    - You can weight a group of people more than others when computing fairness
- Sandra Buttock paper

# AI Act

How are we implementing the AI Act?

- A lot of the requirements is not really clear about the implementation
- Difficulty in terms of language (law and computer science backgrounds)

Are we also considering that not using AI something is the right solution?
