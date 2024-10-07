---
subtitle: Modeling
---

DATA ACQUISITION

# 3.1 Machine Learning Tasks

# Classification
Regression
Clustering

# Machine Learning tasks

* There are  different   tasks  in ML →  depending   on the output  that we want:
  * Classification ,  regression  and  clustering
* Classification :
  * Given a   specific   input, the model (  _classifier_  ) outputs a class  (pattern → class) .
    * If there are  only   2  classes, we call the problem  binary    classification
    * If there are  multiple  classes (>2), we call the problem  multi-class   classification
  * What    is   a class  (the output of the classification task)?
    * A  data set  having  common  properties
    * The concept of class is related with the concept of “label” previously introduced
      * Different labels can be grouped in a single class.
    * The concept of class is  semantic , since it strictly depends by the working context
      * Examples:
        * Classification of italian letters → 21 classes
        * Classification of italian/indian alphabets → 2 classes
* → In our exercises, we will tackle  classification  tasks.

![](./img/neuralnetworks/3 Model2.jpg)

# Machine Learning tasks: Classification

![](./img/neuralnetworks/3 Model3.png)

* Spam   Detection
  * Data: email texts
  * Classes/labels: yes/no (spam)
* Credit Card   Fraud    Detection
  * Data: list of the bank operations
  * Classes/labels: yes/no (fraud)
* Face   Recognition
  * Data: images
  * Classes/labels: identity
* Medical    diagnosys
  * Data: x-ray images
  * Classes/labels: benign/malignant (tumor)

![](./img/neuralnetworks/3 Model4.png)

![](./img/neuralnetworks/3 Model5.jpg)

# Machine Learning tasks

* Regression :
  * Given a   specific   input, the model (  _regressor_  ) outputs a   continuous    value   (data →   value  )
  * You can see a regression task as a classification task with a (very) high number of classes.
  * Usually,  regression   models !=   classification   models
* Examples of regression tasks:
  * Estimation of a  person's height  based on weight
  * Estimation of the  sale prices  for apartments in the real estate market
  * Risk estimation  for insurance companies
  * Energy prediction  produced by a photovoltaic system
  * Health costs  prediction models

How many modules?

Latitude, longitude

Orientation (w.r.t sun)

...

![](./img/neuralnetworks/3 Model6.jpg)

# Machine Learning tasks: Regression

You can see the  growth    percentiles   as a tool to perform regression in order to predict, for instance, the future height or weight.

How much pasta should I put if I have 5 guests (2 adults and 3 children)?

![](./img/neuralnetworks/3 Model7.png)

![](./img/neuralnetworks/3 Model8.jpg)

# Machine Learning tasks

![](./img/neuralnetworks/3 Model9.png)

* Clustering :
  * Identify  groups  ( _clusters_ ) of data  with similar characteristics .
  * Clustering is often applied in an  unsupervised  learning setting, in which the  patterns are not labeled and/or the classes of the problem are not known in advance.
  * Usually, the  unsupervised nature  of the problem makes it  more complex  than classification.
  * Often, even  the number of clusters is not known a priori.
  * The clusters identified can be used as classes.
  * Clustering examples:
    * Marketing  → definition of user groups based on consumption
    * Genetics  → grouping of individuals based on DNA analogies
    * Bioinformatics  → partitioning of genes into groups with similar characteristics
    * Vision  → unsupervised segmentation

![](./img/neuralnetworks/3 Model10.png)

# Machine Learning tasks: Clustering

![](./img/neuralnetworks/3 Model11.png)

# Machine Learning tasks

* For the Artificial Vision domain, we can identify even more specific problems:
  * Classification : (as before)
  * Localization : classification + object position in the image (through a  _bounding box_ )
  * Detection : multiple object classification + localization (through more  _bounding_  _ boxes_ )
  * Segmentation : each pixel in the image is classified

![](./img/neuralnetworks/3 Model12.png)

# Example of Segmentation

![](./img/neuralnetworks/3 Model13.jpg)

[https://youtu.be/X8vSk8R_zTA](https://youtu.be/X8vSk8R_zTA)

# 3.2 Classification through a set of explicitly programmed instructions

# Pattern Recognition
Expert Systems

# Definitions

Pattern   Recognition : the discipline that studies the recognition of patterns (“data samples”) even with pre-programmed algorithms (not able to learn automatically).

No learning phase!

The “model” is a set of  hand-crafted  instructions ( _if-then-else_  paradigm)

Actually, the term Pattern Recognition is generally used to refer AI algorithms

DATA ACQUISITION

# Explicitly programmed instructions

* Technique similar to the  _Expert Systems _ developed in the ‘80s (→ AI History)
  * A first form of Artificial Intelligence.
  * The ability of a calculator to perform (simple)  calculations  on  large amounts of data  is exploited.
* The programmer develops  a series of instructions  to solve a  specific  problem:
  * These instructions are  typically based on   if-then-else   statements
  * A strong prior knowledge of the problem is required
    * In our case*: how to understand only from coordinates if the shape is a square, rectangle, triangle or rhombus?
* What are the tasks that can be faced with the  _explicitly programmed instructions_ ?
  * The  conditions are stable  and known a priori → constrained industrial environments
  * There are  mathematical formulas to model the problem
  * The  problem must be limited  in dimensionality and “not too complex”
  * ...

* With the  _Euclid_  _ _ dataset

# Examples

Anomaly    prediction   with 

explicitly    programmed    instructions

Fit  /  Unfit    prediction   with 

explicitly    programmed    instructions

![](./img/neuralnetworks/3 Model14.png)

![](./img/neuralnetworks/3 Model15.png)

* We observe anomalies when the value:
  * Is greater than a given threshold.
  * We can define the threshold as the mean value of the last 3 peaks.
  * The rate of change of the function is too fast.
  * ...

# Explicitly programmed instructions

* General  considerations about PR:
  * It can achieve a  high degree  of success:
    * If  a priori knowledge  is adequate → In our case, we have geometrics knowledge
    * Dimensionality  of the problem is  limited  → In our case, only few coordinates (6 - 8)
    * The test domain is  similar  to what was assumed when defining the instructions
  * The developed solution will inevitably be (too)  specific :
    * In our case: what happens if a new  _trapezoid_  class is introduced?
* Technical  considerations about PR:
  * There is not a real learning phase  → no training data is needed, all data for val/test.
  * It is possible to understand  why   the developed system fails  in classification.
  * If the problem becomes complicated,  the programming time increases.
  * The  code risks becoming unmanageable  due to:
    * High complexity and number of  innested  statements
    * Length  of the code
    * Too   specific    functions

![](./img/neuralnetworks/3 Model16.png)

![](./img/neuralnetworks/3 Model17.png)

# Limits of programmed instructions

* Task:  Face   Detection   → Is there a face in the image?
  * Image → high dimensionality (128 x 128 x 3 = ~50k values)
  * It is easy for humans to “define” what a face is, but for a computer?
    * What is an eye? A nose? A mouth?
    * Assuming we can define these facial elements, what rules can we write?
    * _“A face consists in two eyes with under a nose and again under a mouth”_

![](./img/neuralnetworks/3 Model18.jpg)

![](./img/neuralnetworks/3 Model19.jpg)

![](./img/neuralnetworks/3 Model20.jpg)

![](./img/neuralnetworks/3 Model21.jpg)

Here maybe we can identify a face

![](./img/neuralnetworks/3 Model22.jpg)

![](./img/neuralnetworks/3 Model23.png)

Other high-complexity problems:

Classification of traffic light light

Classification of road signs

* In short, solving these problems with instructions is very complex, if not  impossible
* The level of  generalization  of the proposed solution would be  very limited
* It is necessary, when needed , to address the problems with other paradigms!
  * The machine  has to learn by itself  how to solve a problem!

![](./img/neuralnetworks/3 Model24.jpg)

# 3.3 Classification with Machine Learning

# The machine learns by itself  how to solve a problem

# How can machine learn?

* A machine can   learn :
  * From data! 
  * For that reason, data is so relevant today.
* Also    humans   can   learn   from data :
  * Currently, we can program machines that  _imitate_  this way of learning of humas
  * Remember that humans learn in many different (and efficient) ways,  we only (badly) imitate just one.
* “Learning from data” is similar to humans learning to play a musical instrument (humans →  machines):
  * I must observe  how  a chord is created →  annotated  data
  * I have to  repeat  the chord several times →  iterative  learning process
  * Someone has to tell me  if I’m repeating it well  →  loss function

![](./img/neuralnetworks/3 Model25.png)

* From a practical point of view, these are the required steps:
  * We  get  the  annotated   data  (we are in the Supervised Learning setting)
  * We  pre-process data , making them suitable for the algorithm we want to use
  * We  iteratively    train  a classifier
  * We  measure the performance  of the implemented solution
* We are going to use the  _scikit-learn_  library, developed for ML
* Now we just have to introduce (some)  classifier models :
  * We will not study clustering (already seen at  _Data Mining_ )
  * You have already seen some classifiers at  _Data Mining_
* We will see how to measure system performance

![](./img/neuralnetworks/3 Model26.png)

# 3.3.1 Support  Vector Machines

# SVMs

# Support Vector Machines (SVMs)

* A  supervised  learning method used for  classification , regression and outliers' detection.
  * Effective in  high dimensional  spaces.
  * Still effective in cases where number of dimensions is greater than the number of samples.
* Key ideas  of SVMs (linear case):
  * Classification →  linearly  separate patterns

Hyperplanes , they are a decision surface

Which separating hyperplane?

In general, lots of possible solutions for a,b,c (an  infinite  number!)

SVM finds an optimal solution!

* SVMs  maximize  the  margin    between   support   vectors
* The decision function is fully specified by a (usually very small) subset of training samples, the support vectors.
* This becomes a  _Quadratic programming _ problem that is easy to solve by standard methods
  * _Lagrange_  multipliers

* Support   vectors , the data points that lie closest
* to the decision surface (or hyperplane).
  * These are data  points  most    difficult   to   classify
  * They  directly influence  the optimum location of the decision surface
  * They are the elements of the training set that would  change  the position of the dividing hyperplane if removed

If you are interested in mathematical details: [https://web.mit.edu/6.034/wwwbob/svm-notes-long-08.pdf](https://web.mit.edu/6.034/wwwbob/svm-notes-long-08.pdf)

* What if patterms are not linearly separable?
  * The idea is to gain linearly separation by  mapping the data  to a higher dimensional space
  * The mapping procedure is realized through a  kernel function
* What if we have more than 2 classes?
  * One-  Against  -One : classifiers trained on all possible class couples; a pattern is tested by each classifier that asisgn a vote; the class with the majority of votes is taken ( _majority_  _ vote rule_ ).
  * One-  Against  -  All : one SVM trained for each class (in which the secon class is the set of the other classes). At testing time, the SVM that has the better margin decides the final class.

![](./img/neuralnetworks/3 Model27.png)

[https://en.wikipedia.org/wiki/Kernel_method](https://en.wikipedia.org/wiki/Kernel_method)

# Hands on SVMs

* Linear  or  non-linear  kernel?
  * If the  dimensionality  of the space is  very high  ( _e.g.,_  5000 features),  linear  SVM is generally used
  * For  low  dimensionality ( _e.g.,_  20 features) the primary choice is  non-linear  SVM with RBF kernel
  * For  medium  dimensionality ( _e.g.,_  200 features)  both  types are generally tried
  * Remember, the hyperparameters are calibrated on a separate validation set, or through cross validation

![](./img/neuralnetworks/3 Model28.png)

[https://scikit-learn.org/stable/modules/generated/sklearn.svm.SVC.html](https://scikit-learn.org/stable/modules/generated/sklearn.svm.SVC.html)

# 3.3.2 Decision Trees

# DTs

# Decision Tree

Tree-like model  to perform the final classification.

Decision trees are commonly used in  _operational research_ , specifically in  _decision analysis_ .

![](./img/neuralnetworks/3 Model29.png)

Try to define when a data point belongs to class 1 (blue) or class 2 (green)

Probably, you just evaluated a decision tree in your head

![](./img/neuralnetworks/3 Model30.png)

[https://victorzhou.com/blog/intro-to-random-forests/](https://victorzhou.com/blog/intro-to-random-forests/)

* What happen if we add a class?
  * Our old decision tree doesn’t work so well anymore!
  * We need to add another  decision node

![](./img/neuralnetworks/3 Model31.png)

![](./img/neuralnetworks/3 Model32.png)

_Intermediate _  _Nodes_

# Decision Tree: training

* The  root  node:
  * We want a decision node that makes a  “good” split  →  separating different classes as much as possible .
  * But how do we quantify  how good  a split is? → we need a  measure  →  _Gini index, entropy, information gain_ , ...
  * Different possible  algorithms  ( _ID3_ ,  _C4.5_  and  _CART_ ) that recursively evaluating different features and using at each node the feature that best splits the data.
* The  second  node:
  * Let’s (arbitrarily) go to the left branch
  * We’re now only using the data that would that “belong” to the left branch
  * We just do the same thing as in the root node!
  * We apply this procedure to all the other nodes
* The predicted category would be the category on the leaf node
* When to  stop  the training?
  * When the selected measure is not further increased

# 3.3.3 Ensemble Methods

# Bagging → Random Forest 
Boosting → Adaboost

# Ensemble methods: combine linear classifiers

* A  multi-classifier  is an approach where several classifiers are used  together :
  * In  parallel
  * In  cascade
* It has been shown the use of  combinations  of classifiers can  strongly improve performance
  * In practice, investing (a lot of) time in “extremely” optimizing a single classifier is generally not convenient.
* The combination is effective only when  individual classifiers  are (at least partially)  independent :
  * Using different features, different algorithms for feature extraction, different classification algorithms, ...
  * Unfortunately,  it is very difficult to have real independence between classifiers
* Two approaches:
  * Bagging : I train the same classification algorithm on different portions of the training set
  * Boosting : I focus the training on incorrectly classified patterns

# Bagging vs Boosting

![](./img/neuralnetworks/3 Model33.png)

random sampling with replacement

Image credits: [https://pub.towardsai.net/bagging-vs-boosting-the-power-of-ensemble-methods-in-machine-learning-6404e33524e6](https://pub.towardsai.net/bagging-vs-boosting-the-power-of-ensemble-methods-in-machine-learning-6404e33524e6)

# Ensemble methods

![](./img/neuralnetworks/3 Model34.png)

* How to  merge   decisions  of the individual classifiers :
* Decision    level
  * Majority   vote rule
    * Each classifier  votes  for a class.
    * The pattern is assigned to the  highest   rated  class.
  * Borda   count
    * Each classifier produces a  ranking  of the classes
    * The rankings are converted into  scores .
    * The class with the  highest final score  is the one chosen.

![](./img/neuralnetworks/3 Model35.png)

[https://en.wikipedia.org/wiki/Borda_count](https://en.wikipedia.org/wiki/Borda_count)

* Confidence   level
  * Each classifier outputs a  confidence   value , and these values are merged with different function:  _sum_ ,  _product_ ,  _min_ ,  _max_ , ...
  * Weighted   sum : the sum of the confidence values is performed by weighing the different classifiers according to their degree of skill.
* NB : in practice, the  _sum_  is often preferable to the product as it is more  robust .
  * Indeed, in the  _product_  it is sufficient that a single classifier indicates zero confidence to bring the confidence of the multi classifier to zero!

![](./img/neuralnetworks/3 Model36.jpg)

# Random Forest

* Proposed in 2001, based on  bagging
* The single classifier is a Decision Tree (DT):
  * Hundreds or even thousands of DTs for each forest
* 2 types of bagging:
  * Data bagging : RF repeatedly selects a random sample with replacement of the training set and fits trees to these samples.
  * Feature   bagging : in each decision node, the choice of the best feature on which to partition is not made on the entire set of 𝑑 feature (dimensionality of the patterns), but on a random subset.

![](./img/neuralnetworks/3 Model37.png)

# Adaboost

*Another version of the algorithm is with data sampling (if wrongly classified) with replacement

# 3.4 Classification with Machine Learning  and  Feature Descriptors

# Histogram of Oriented Gradients
Local Binary Patterns

# Feature Descriptors

* The learning phase is complex with  high-  dimensionality   data  as  images
* For instance, what if in input we have RGB  images ?
* A first solution could be to “unroll” each image and to use each pixel’s value as input value:
  * The input dimensionality explodes:  224 x 224 x 3 = ~150k   values !
  * The classifier receives too many values, it is not trivial understand what is important and what no
* A second solution is to  introduce a new step  in the machine learning paradigm:

_Human _

_intervention_

![](./img/neuralnetworks/3 Model38.jpg)

0,25

0,366

1,25

...

![](./img/neuralnetworks/3 Model39.png)

High dimensional data

(image)

How to extract useful information in a “compact” way?

Feature Descriptor

(FD)

# Feature Extraction

Feature   Extraction : the extraction procedure of features from data

Feature/Feature   Descriptor : an  _n_ -dimensional vector of numerical features that  represent  (in a  _discriminative _ way) some object (used as input data).

Actually, the terms  _feature_  and  _data_  are often interchangeable

DATA ACQUISITION

FEATURE EXTRACTION

# Definitions

* Data : the elements contained in a set ( _dataset_ ) that we are going to use in our algorithm
  * Each element can named as  _data point_ ,  _observation_ ,  _data sample, data_ .
* Feature : individual characteristics or attributes used to describe and represent data points.
  * Also, the variables or properties that  capture information  about the data
  * The number of features is referred as  dimensionality  (!= the number of data)
    * If the dimensionality is 2, it is easy to plot and visualize the feature distribution
  * Examples:
    * In a dataset of housing prices, features could include the number of bedrooms, location, and number of bathrooms.
    * In a dataset of geometric shapes, features include the coordinates of the vertices of each shape
    * In a dataset of people, features could include only the height and the weight of each person.

![](./img/neuralnetworks/3 Model40.png)

# Example of Feature Descriptor

* Object A geometric shape
* Data Array of values (coordinates, diagonals, ...)
* Feature   Descriptor
  * A (sub)set of the coordinates
  * A «new value» that we can compute from coordinates
  * ...

* Object An image
* Data Matrix of values (pixels)
* Feature   Descriptor
  * Unrolled or a subset of pixels
  * A «new value» that we can compute from pixels
  * ...

# Histogram of Oriented Gradients (HOG)

* A visual feature descriptor (work with images)
* Good to describe the  shape  of an object!
* HOG provides the  edge  direction:
  * The whole image is divided into smaller regions
  * For each region, the edge directions are calculated
    * Edge  →  curves at which the brightness changes sharply
    * Direction  → angle and magnitude of edges
  * All these directions are provided through a histogram

![](./img/neuralnetworks/3 Model41.png)

![](./img/neuralnetworks/3 Model42.png)

![](./img/neuralnetworks/3 Model43.png)

![](./img/neuralnetworks/3 Model44.jpg)

![](./img/neuralnetworks/3 Model45.jpg)

[https://www.vlfeat.org/overview/hog.html](https://www.vlfeat.org/overview/hog.html)

hog(img,  orientations =8,  pixels_per_cell =(4, 4),  cells_per_block =(1, 1))

![](./img/neuralnetworks/3 Model46.png)

# Local Binary Pattern (LBP)

* A visual feature descriptor (work with images)
* Good to describe the  texture  of the surfaces!
* Texture → visual surface appearance
  * 2 elements:
    * Local spatial patterns
      * The 3x3 neighborhood of each pixel is thresholded with the center value
    * Gray scale contrast measure
  * They are computed on different cells of the image
  * It has been extended to use neighborhoods of different sizes

![](./img/neuralnetworks/3 Model47.png)

![](./img/neuralnetworks/3 Model48.jpg)

![](./img/neuralnetworks/3 Model49.png)

* local_binary_pattern(img,  P =100,  R =5)
  * P: the number of points in a circularly symmetric neighborhood to consider.
  * R: the radius of the circle which allows us to account for different scales.

![](./img/neuralnetworks/3 Model50.jpg)

[https://pyimagesearch.com/2015/12/07/local-binary-patterns-with-python-opencv/](https://pyimagesearch.com/2015/12/07/local-binary-patterns-with-python-opencv/)


# 3.5.1 Convolutional Neural Networks

# CNNs: the real «core» of the current AI revolution

# Convolutional Neural Networks (CNNs)

* CNNs are particular Neural Networks specifically designed to process images
  * MLPs don’t scale well to full images
  * Instead of flatting input 3D data (let’s define as 3D also 1 channel images → ex. 224x224x1)...
  * *...what about reshaping neurons in 3D?*

![](./img/neuralnetworks/3 Model78.jpg)

3D

Input image

(224x224x1)

3D

Neurons

(3x3x1)

* Unlike MLPs, CNN layers have neurons arranged in 3 dimensions:
  * Width  (W)
  * Height  (H)
  * Depth  (C) → usually, greater than 1
* How is possible to “connect” the 3D input with the smaller *kernel*  (the “3D neuron set”)?
  * Through a mathematical operation called convolution!
  * The convolution is applied with a  sliding-window process

![](./img/neuralnetworks/3 Model79.jpg)

![](./img/neuralnetworks/3 Model80.jpg)

[https://en.wikipedia.org/wiki/Convolution](https://en.wikipedia.org/wiki/Convolution)

# Convolution with images

* The convolution is the core building block of convolutional neural networks.
  * Each kernel is convolved with the input volume thus producing a 2D feature map
  * Usually, depth > 1 → more kernels → *one feature map* for each kernel is produced
  * The output volume is then made up by stacking all activation maps produced one on the top of the other

![](./img/neuralnetworks/3 Model81.gif)

![](./img/neuralnetworks/3 Model82.png)

2x0 + 2x0 + 0x01x1 + 2x-1 + 1x0

2x1 + 1x1 + 1x-1

Output

( *Feature *  *Map*)

[https://stanford.edu/~shervine/teaching/cs-230/cheatsheet-convolutional-neural-networks](https://stanford.edu/~shervine/teaching/cs-230/cheatsheet-convolutional-neural-networks)

* Now the learnable weights  (of the MLP) are grouped in the kernel!
  * Each cell can be viewed as a single weight to learn

![](./img/neuralnetworks/3 Model83.png)

![](./img/neuralnetworks/3 Model84.png)

1 channel image (7x7x1)

2 kernels (also called filters)

1 bias for each kernel

2 feature maps produced

3 channel image (7x7x3)

2 kernels (also called filters) applied on each channel

1 bias for each kernel

2 feature maps produced

[https://cs231n.github.io/convolutional-networks/](https://cs231n.github.io/convolutional-networks/)

# 

![](./img/neuralnetworks/3 Model85.png)

Esempio di kernel che evidenzia i contorni di una immagine.

![](./img/neuralnetworks/3 Model86.png)

Esempio di kernel che produce un effetto embossed.

![](./img/neuralnetworks/3 Model87.png)

Esempi di kernel che produce un effetto blur

# CNN Architecture

A “traditional” CNN is made up by a whole bunch of layers stacked one on the top of the other:

![](./img/neuralnetworks/3 Model88.png)

Fully Connected layers (MLP)

2D convolution

layers

Feature extractor

# Convolutional layer

* Convolutional layers learn to extract various types of visual information in a  hierarchical manner
  * In the layers close to the input, CNNs learn filters to extract “simple” visual information
  * In the layers placed in depth, the filters extract semantically complex visual information
* The interesting thing is that this mechanism seems similar to what happens in our brain, where the visual cortex processes information by different layers.

![](./img/neuralnetworks/3 Model89.png)

![](./img/neuralnetworks/3 Model90.png)

# 

![](./img/neuralnetworks/3 Model91.png)

# Convolutional layer

Moreover, it has been experimentally verified that some learned filters are similar to the neurological stimuli of the animal brain!

![](./img/neuralnetworks/3 Model92.png)

![](./img/neuralnetworks/3 Model93.png)

In a similar way, CNNs learns filters that provide a high response ( *i.e.* numeric value) with oriented edges!

*Hubel* and *Wiesel* discovered oriented edges cause high responses in one specific cell of the visual cortex. The edge must be in certain position and orientation.

![](./img/neuralnetworks/3 Model94.png)

![](./img/neuralnetworks/3 Model95.png)

![](./img/neuralnetworks/3 Model96.png)

![](./img/neuralnetworks/3 Model97.png)

![](./img/neuralnetworks/3 Model98.jpg)

High response on edges

Hubel, D.H., Wiesel, T.N.:  *Receptive fields of single *  *neurones* * in the cat’s *  *striatecortex*. The Journal of physiology (1959)

# Pooling layer

* Pooling layers spatially subsample the input volume.
* Pooling layers are widely used for a number of reasons:
  * Gain robustness to exact location of the features
  * Reduce computational (memory) cost
  * Help preventing overfitting
  * Increase receptive field of following layers
* Many different functions could be used:  *max*  (most used), *average*,...

![](./img/neuralnetworks/3 Model99.wmf)

# Other Layers

* Activation layer  → see *activation *  *functions*
* Flatten layer
  * Usually exploited to connect the 3D Feature Extractor to the 1D classifier
  * In input, there is a set of 3D feature maps (for instance, 12x12x64)
  * The 2D input is «unrolled», to fit the 1D input of the first fully connected layer
  * 12x12x64 → 9216
* It is possibile to use other techniques to join the Feature Extractor and the classifier, e.g. the *Global *  *Average* * Pooling *  *layer*

![](./img/neuralnetworks/3 Model100.png)

![](./img/neuralnetworks/3 Model101.png)

# CNN architectures: the layer organization

* More complex CNN architectures have recently been demonstrated to perform better than the traditional conv → ReLU → pooling stack architecture.
* These architectures usually feature different graph topologies and much more intricate connectivity structures
* However, these advanced architectures are out of the scope of these lectures.
* In our exercitations, we are going to use well-known architectures proposed in literature:
  * VGG1
  * ResNet2
  * AlexNet3
  *...
* All these architectures can be used pre-trained  (already trained on datasets like ImageNet)

![](./img/neuralnetworks/3 Model102.png)

1. [https://arxiv.org/abs/1409.1556](https://arxiv.org/abs/1409.1556)

2. [https://arxiv.org/abs/1512.03385](https://arxiv.org/abs/1512.03385)

3. [https://papers.nips.cc/paper/2012/hash/c399862d3b9d6b76c8436e924a68c45b-Abstract.html](https://papers.nips.cc/paper/2012/hash/c399862d3b9d6b76c8436e924a68c45b-Abstract.html)

# Different ways to train CNNs

* From scratch
  * The network is trained from "0", only with an initialization of the weights
  * Large amount of data training required
  * Usually long and complex training procedure
* Pre-trained
  * A previously trained network is used
  * The output is defined by the previous training
  * When trained on excellent datasets, excellent performance
* Fine-  tuned
  * A previously trained network is used
  * I keep “freezed” (unchanged) the Feature Extractor
  * I made changes to the Classifier (e.g. change the number of classes)
  
# References