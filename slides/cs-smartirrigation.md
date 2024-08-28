# Case Study: Smart Irrigation

# Smart Irrigation as a Case Study

:::: {.columns}
::: {.column width="60%"}

The synergy of internet of things (IoT) and precision farming is producing valuable applications in the Agritech domain [@vitali2021crop]

- **Agritech**: use of technology for farming to improve efficiency and profitability


Optimizing soil moisture is crucial for watering and crop performance [@turkeltaub2016real]

- **GOAL**: saving water while improving fruit quality (i.e., provide a recommendation of the amount necessary water)
- *Soils* have different water retention
- *Watering systems* have different behaviors
    - Drippers vs sprinklers
- *Plants* have different water demand
    - Kiwi [@judd1986water] vs Grapes
- *Sensors* produce different measurements with different precisions

:::
::: {.column width="40%"}

![](https://github.com/user-attachments/assets/6656bc86-dfe8-4d58-a1e7-eebf88a8c71d)

:::
::::

# Reference Scenario

:::: {.columns}
::: {.column width="50%"}

![Kiwi orchard](https://github.com/user-attachments/assets/51ddbda5-791f-4a27-b3e8-0249e68b4be7)

:::
::: {.column width="50%"}

![Model of the orchard](https://github.com/user-attachments/assets/3ecb211c-c5ae-4fdf-8870-4449155de0c9)

- Kiwi *plants are aligned along rows*
- Each row has many *drippers* (e.g., 1 every 60cm)
- Drippers can water a *limited soil volume*

:::
::::

# Digital Transformation

![image](https://github.com/user-attachments/assets/70b623f5-8d7e-4c98-94e6-1c723deb6420)

# 

:::: {.columns}
::: {.column width="60%"}

(Example) Scenarios of digital transformation in agriculture

- *Scenario #1*
    - The farmer/technician controls the watering system based only on the experience
    - No digital data/KPIs/automation
- *Scenario #2*
    - The control of the watering system is refined by observing sensor data
    - Sensor data is digitalized, no KPIs/automatic
- *Scenario #3*
    - A decision support system that, knowing how to optimize KPIs, controls the watering system
    - Sensor data is digitalized, automatic KPIs and action

:::
::: {.column width="40%"}

![Farmer](https://github.com/user-attachments/assets/f3931c14-05f2-48f8-aa1f-5a2065c1c3f6)

:::
::::

#

:::: {.columns}
::: {.column width="60%"}

(Example) Scenarios of digital transformation in agriculture

- *Scenario #1*
    - The farmer/technician controls the watering system based only on the experience
    - No digital data/KPIs/automation
- *Scenario #2*
    - The control of the watering system is refined by observing sensor data
    - Sensor data is digitalized, no KPIs/automatic
- *Scenario #3*
    - A decision support system that, knowing how to optimize KPIs, controls the watering system
    - Sensor data is digitalized, automatic KPIs and action

:::
::: {.column width="40%"}

![AI](https://github.com/user-attachments/assets/ba718451-ac90-41bb-9d56-bf42c65667d2)

:::
::::

# Simulators...

To achieve our goal, *it necessary to understand of the soil behaves*

Simulate the soil behavior according to physical models [@van1980closed]

- However a fine tuning is required, we need to know/parametrize everything
    - *Soil* (e.g., retention curve, hysteresis [@pham2005study])
    - *Plant* (e.g., roots, LAI)
    - *Weather* conditions (temperature, humidity, wind, precipitations)
    - *Watering* system (e.g., capacity, distance between drippers)
- Tuning can take months (of human interactions)!
    - Need to collect samples from the field... if some parameter is incorrect we need to trace back
    - Need to implement/code all physical features into the simulator
        - E.g., [@vsimunek2012hydrus] implemented in [@bittelli2015soil]
    - Hyper-parameter tuning with machine learning can help, but it is not a silver bullet

# ... vs Sensors

:::: {.columns}
::: {.column width="32%"}

![[@koyuncu2021construction]](https://github.com/user-attachments/assets/34d873c7-cef3-40ff-96b7-a8a7cde01d3e)

:::
::: {.column width="32%"}

![[@zheng2009spatial]](https://github.com/user-attachments/assets/35bd797c-6d1a-469b-9334-dbfdbea1107e)

:::
::: {.column width="32%"}

![[@fersch2018synergies]](https://github.com/user-attachments/assets/a87b3e8e-6afc-451a-b971-9e31052b71d3)

:::
::::

#

![image](https://github.com/user-attachments/assets/27db3d71-a7fc-47d1-b1ef-5026afcf72f4)

# Open Field vs Simulator

![image](https://github.com/user-attachments/assets/0dc1575b-bdae-4805-a8fe-f19a6a9f7092)

# Sensor Layouts and Symmetry Assumptions

Competitors rely on a single sensor (or a line of sensors at different depths) and assume that the soil moisture is uniform everywhere 

:::: {.columns}
::: {.column width="50%"}

![image](https://github.com/user-attachments/assets/3ecb211c-c5ae-4fdf-8870-4449155de0c9)

:::
::: {.column width="50%"}

![image](https://github.com/user-attachments/assets/535ef33f-3107-4258-adb9-e3686cb327b3)

:::
::::

- If watered volume is symmetric along the row, a 2D sensor grid is sufficient to represent the soil volume
- If moisture variations take place along the row too, a 3D grid of sensors is required
    - E.g., too sparse drippers

# From Sensors to Soil Profiles

:::: {.columns}
::: {.column width="32%"}

![Actual soil moisture](https://github.com/user-attachments/assets/b0c575e8-b0fe-4726-82a0-a894d53db809)

:::
::: {.column width="32%"}

![Sampled data](https://github.com/user-attachments/assets/e792be94-cbd4-489e-9026-e5c4f80d0a45)

:::
::: {.column width="32%"}

![Profile](https://github.com/user-attachments/assets/df2e2a26-8a54-49e1-936d-f8d93f48df55)

:::
::::

1. Soil moisture is a continuum in the soil
1. Sensors return a discretized representation of soil moisture
    - Depending on the number of sensors and on their layout the monitoring accuracy changes
1. Goal: produce fine-grained soil profiles out of coarse-grained layouts

# Overview of the Approach 

![image](https://github.com/user-attachments/assets/ac0d5d37-64b9-4454-84bd-60f5bf83d510)

# Monitoring [@francia2022multi]

![Overview](https://github.com/user-attachments/assets/83118d01-bad4-4b54-8921-d2d1f9d73a3f)

# Data Collection

:::: {.columns}
::: {.column width="60%"}

Setup

- We install a 2D/3D grid of sensors

For instance, in the 2D setting 

- 4 columns of sensors are located across the row (e.g., 0/30/60/90cm)
    - The column (0, *) is under the dripper
- Each columns has 3 sensors located at 3 depths (e.g., 20/40/60cm)


:::
::: {.column width="40%"}

![image](https://github.com/user-attachments/assets/90034743-1c3a-46b6-9408-93f2644703f1)

:::
::::

# Data Collection

In the 2D setting (3 x 4 gypsum block sensors)

- Sample soil moisture-sensor data every 15 minutes
- Collect dripper and weather data  (humidity, temperature, solar radiation, wind) every hour

How many data does each monitored field produces every season?

$(12 \cdot 4 \frac{𝑠𝑎𝑚𝑝𝑙𝑒𝑠}{ℎ𝑜𝑢𝑟}+5 \frac{𝑠𝑎𝑚𝑝𝑙𝑒𝑠}{ℎ𝑜𝑢𝑟}) \cdot 24 \frac{ℎ𝑜𝑢𝑟}{𝑑𝑎𝑦} \cdot 30 \frac{𝑑𝑎𝑦}{𝑚𝑜𝑛𝑡ℎ} \cdot 5 \frac{𝑚𝑜𝑛𝑡ℎ}{𝑦𝑒𝑎𝑟} = 200 \cdot 10^3 \frac{𝑠𝑎𝑚𝑝𝑙𝑒𝑠}{𝑦𝑒𝑎𝑟}$

We monitored 6 fields for 2 years

$200 \cdot 10^3 \frac{𝑠𝑎𝑚𝑝𝑙𝑒𝑠}{𝑦𝑒𝑎𝑟} \cdot 2 𝑦𝑒𝑎𝑟𝑠 \cdot 6= 2.4 \cdot 10^6 𝑠𝑎𝑚𝑝𝑙𝑒𝑠$

We should consider accessory data for storage and optimization structures

- In two years, we collected/generated 16GB data (as of 2022-08-30)
- In four years, we collected/generated 64GB data (as of 2024-08-30)

# Processing

:::: {.columns}
::: {.column width="60%"}

Feature unaware (FU)

- Plug-and-play 
- Create a linear interpolation of the real-time sensor data

Feature aware (FA)

- Require time for data collection and training/testing
- Create an interpolation of the real-time sensor data through machine learning
:::
::: {.column width="40%"}

![image](https://github.com/user-attachments/assets/6397b84c-b1ec-4ce9-979f-a1e688d5c2d1)

:::
::::

# Feature Unaware

:::: {.columns}
::: {.column width="60%"}

Feature unaware (FU)

- Plug-and-play 
- Create a linear interpolation of the real-time sensor data

:::
::: {.column width="40%"}

![image](https://github.com/user-attachments/assets/bb91b88a-440c-42b6-8729-ff9af7ee40c2)

:::
::::

# Feature Unaware

![image](https://github.com/user-attachments/assets/8d6fbc76-edd5-4a63-9a19-d035c432fa9d)

# Feature Aware

:::: {.columns}
::: {.column width="60%"}

Feature aware

- Create an interpolation of the real-time sensor data through machine learning
- Offline pipeline

Given the soil texture as input

- Simulate different patterns of SM to produce a dataset of simulated SM
- Train a machine learning model on such data
- Deploy the model to estimate the soil profile

:::
::: {.column width="40%"}

![image](https://github.com/user-attachments/assets/80848360-0e67-48c9-b70a-5468ca21951e)

:::
::::

# Feature Aware

![image](https://github.com/user-attachments/assets/d4d4226e-fd22-42ac-ae4c-90b08b971c58)

# Feature Aware

Data generation and augmentation

- CRITERIA 3D to simulate the hydrological fluxes in the soil following Richard’s equations
- Inputs
    - The soil texture
    - "Default" settings for the kiwi-plant (e.g., shape of the tree roots / LAI)
    - Watering system based on a single dripper
    - Weather conditions from ARPAE
    - Different watering patterns (by changing watering intervals and the amount of supplied water)
- Output
    - Training set = $12 \frac{𝑠𝑎𝑚𝑝𝑙𝑒𝑠}{ℎ𝑜𝑢𝑟} \cdot 24 \frac{ℎ𝑜𝑢𝑟}{𝑑𝑎𝑦} \cdot 30 \frac{𝑑𝑎𝑦}{𝑚𝑜𝑛𝑡ℎ} \cdot 4 months = 35 \cdot 10^3 samples$
    - Validation set = same as training set, but we simulate with different weather/irrigation patterns
    - Test set = 4 months from the real field
- Different weather conditions & watering patterns to enable generalization and avoid overfitting

# Feature Aware

This is a (multi-output) regression problem

- The task is to learn the function mapping the input to the continuous output
- We tried several machine learning models
    - SVR, Random Forest Regression, Linear Regression, and ANN
    - (A simple) ANN is the best performing model
    - The hyper parameters (structure/learning rates) are set through a hyper-parameter tuning process
        - HyperOpt: state-of-the-art optimization technique to explore the huge search space of hyper-parameters

# Artificial Neural Networks

![image](https://github.com/user-attachments/assets/b3b7641a-bba6-4333-b3e4-8aafdc08fca4)

# Artificial Neural Networks

![image](https://github.com/user-attachments/assets/083d3687-cb10-4c93-80c1-33fef0d0bdb5)

# Feature Aware vs Unaware

:::: {.columns}
::: {.column width="50%"}

![Feature unaware](https://github.com/user-attachments/assets/39bc042a-dc34-4af4-8e6e-d1b025930e1f)

:::
::: {.column width="50%"}

![Feature aware](https://github.com/user-attachments/assets/86103a11-a85b-431f-bbf6-65cb1333f0e5)

:::
::::

# Evaluation

![image](https://github.com/user-attachments/assets/7a07f057-3297-4cc4-ac05-2cfaf6fda152)

# Evaluation

If I got 4 sensors, what layout should I choose?

![image](https://github.com/user-attachments/assets/eda101bd-308b-4a5b-ac51-4a0be5fd4ecc)

# Evaluation

If I got 4 sensors, what layout should I choose?

:::: {.columns}
::: {.column width="50%"}
![image](https://github.com/user-attachments/assets/69a8cc96-1e4d-49b7-9023-5facbe276a0b)
:::
::: {.column width="50%"}
![image](https://github.com/user-attachments/assets/9222e84b-0dd8-4bd2-bf07-15bc91c071cd)
:::
::::

# Serving the Data

![image](https://github.com/user-attachments/assets/8571ffda-d6da-49c6-a616-463c3eb9b2ca)

# Descriptive Analytics

Starting from the profile, we derive meaningful visualizations/analysis

- SM variance (left; lighter areas are those where SM varies the most) and average (right)

The charts support both agricultural technicians and farmers

- What is the watered volume? 
    - This region is typically characterized by watering and high suction by the roots 
    - Over-watering: high values in the average chart and low values in the variance chart
- Where is the root suction higher?
    - A high root suction quickly reduces the moisture in the soil and results in high soil moisture variance
- How soil moisture dynamics impact on the watered volume?
    - If, after increasing the water supplied, the profile does not change then the soil disperses water

# Prescripting [@quartieri2021effect]

![image](https://github.com/user-attachments/assets/43aaaae7-7e5a-4400-af7d-8ffd884a2162)

# Simple Rule (2021)

:::: {.columns}
::: {.column width="50%"}

    IF
       ((#BlueCells + #LightBlueCells)/(#Cells) < 0.50 &&
       (#BlueCells)/(#Cells) < 0.25 in the last 12h) &&
       precipitations < 7mm in the last 12h
    THEN 
        Recommended water = Evapotranspiration (ET) of the day before
    ELSE 
        Do nothing

:::
::: {.column width="50%"}
![image](https://github.com/user-attachments/assets/e25c69f8-44a7-4401-a436-3feb0758832a)
:::
::::

# Test Setup

Two irrigation setups during the 2021 campaign (i.e., May/October) within the same orchard

- *Managed Row*: irrigation is automatically controlled using a 2D installation of 12 sensor
- *Control Row*: irrigation is manually controlled by the farmer

:::: {.columns}
::: {.column width="50%"}

![Managed Row](https://github.com/user-attachments/assets/6f648d9d-5c3e-4c24-b0e4-9ce30a6ec90d)

:::
::: {.column width="50%"}

![Control Row](https://github.com/user-attachments/assets/cb80c32b-f892-4283-86a6-bae0793a0613)

:::
::::

# Results

- **Water management**
    - MR saved 44% of water during the whole campaign
    - Maximum saving in June and September: for the farmer is harder to estimate the SM level and water requirement
- **Fruit quality**
    - Productivity of vines was unaffected by the irrigation and ranged from 32 to 39 kg/vine (35-44 t/ha)
    - Fruits from CR appeared greener (hue angle of 105) than fruits from MR (hue angle of 102)
    - Fruits from CR had lower soluble solid concentration at harvest (12.7 brix) than fruits from MR (15.3 brix)
    - The gap has been maintained after 2 months of storage (and 1 day of shelf life) 
        - The soluble solid concentration was 17.4 brix for the MR vs 16.1 brix for the CR


# Control System

![image](https://github.com/user-attachments/assets/43aaaae7-7e5a-4400-af7d-8ffd884a2162)

![image](https://github.com/user-attachments/assets/e4307c5b-e813-4699-9022-4b0e145f04f5)

# Single Wing vs Double Wing

:::: {.columns}
::: {.column width="50%"}

**Single wing**

![image](https://github.com/user-attachments/assets/5cb9c2a0-61cb-4532-8d43-15f5ce0cdb7e)

![image](https://github.com/user-attachments/assets/cb80c32b-f892-4283-86a6-bae0793a0613)

:::
::: {.column width="50%"}

**Double wing**

![image](https://github.com/user-attachments/assets/d3eed7d0-8001-47b2-a66d-d6ba16aa26db)

![image](https://github.com/user-attachments/assets/4c832868-2913-4f33-bf6f-bfcaf639e0ad)

:::
::::


# Future direction: soil moisture profiling

Continual learning to overcome the limitations of the simulation

- Adapting the model after its deployment
- Use the data that is coming into the production environment and retrain the model based 
- Fit to unforeseen field conditions

Improving the recommendation

- Sometimes the soil does not behave as expected

Homogeneous water recommendation; however, we need to handle:

- The "water needs" of the plant
- The phenological growth stages
- Field conditions
- Latitude/longitude
- Availability of water

# Future direction: forecasting

While profiling looks at the current state of soil moisture, how will soil moisture change --- for instance --- in a week?

Forecasting soil moisture

- Soil profiles are snapshots of soil moisture, we should learn from time series of snapshots 
- Features to consider
    - Soil conditions
    - Weather conditions
    - Type of irrigation

# Future direction: unifying data platform

:::: {.columns}
::: {.column width="50%"}

Soil monitoring is a possible application of data platforms for precision farming

- Robotics, tractors and implements
- Satellite images and remote sensing indexes
- Spatio-temporal analysis
- And many others!

Research issues

- Shared dictionary. Many sub-domains of precision agriculture, each with its dictionary
- Data integration. We need a common layer (storage+processing) to access data sources
- Heterogeneous analytics. Data have multiple natures, spatial and temporal data require ad-hoc techniques 

:::
::: {.column width="50%"}

![image](https://github.com/user-attachments/assets/f710d9cb-d71c-468d-9b70-582024fe5c6e)

:::
::::

# References