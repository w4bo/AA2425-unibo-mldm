# Case Study: Smart Irrigation

# Data Platforms in the Agritech Domain

The synergy of internet of things (IoT) and precision farming is producing valuable applications in the Agritech domain [@vitali2021crop]

- **Agritech**: use of technology for farming to improve efficiency and profitability

# Smart Irrigation as a Case Study

:::: {.columns}
::: {.column width="60%"}

Optimizing soil moisture is crucial for watering and crop performance [@turkeltaub2016real]

- **GOAL**: saving water while improving fruit quality (i.e., provide a recommendation of the amount necessary water)
- *Soils* have different water retention
- *Watering systems* have different behaviors (e.g., drippers and sprinklers)
- *Plants* have different water demand (e.g., Kiwi [@judd1986water] vs Grapes)
- *Sensors* produce different measurements with different precisions

:::
::: {.column width="40%"}

![](https://github.com/user-attachments/assets/6656bc86-dfe8-4d58-a1e7-eebf88a8c71d)

:::
::::

# Reference Scenario

:::: {.columns}
::: {.column width="60%"}

We consider an orchard where 

- Kiwi *plants are aligned along rows*
- Each row has many *drippers* (e.g., 1 every 60cm)
- Drippers can water a *limited soil volume*

:::
::: {.column width="40%"}

![image](https://github.com/user-attachments/assets/3ecb211c-c5ae-4fdf-8870-4449155de0c9)

:::
::::

# Digital Transformation

:::: {.columns}
::: {.column width="60%"}

(Example) Scenarios of digital transformation in agriculture

- Scenario #1
    - The farmer/technician controls the watering system based only on the experience
    - No digital data/KPIs/automation
- Scenario #2
    - The control of the watering system is refined by observing sensor data
    - Sensor data is digitalized, no KPIs/automatic
- Scenario #3
    a decision support system that, knowing how to optimize KPIs, controls the watering system

:::
::: {.column width="40%"}

![Farmer](https://github.com/user-attachments/assets/f3931c14-05f2-48f8-aa1f-5a2065c1c3f6)

:::
::::

# Digital Transformation

:::: {.columns}
::: {.column width="60%"}

(Example) Scenarios of digital transformation in agriculture

- Scenario #1
    - The farmer/technician controls the watering system based only on the experience
    - No digital data/KPIs/automation
- Scenario #2
    - The control of the watering system is refined by observing sensor data
    - Sensor data is digitalized, no KPIs/automatic
- Scenario #3
    - A decision support system that, knowing how to optimize KPIs, controls the watering system
    - Sensor data is digitalized, automatic KPIs and action

:::
::: {.column width="40%"}

![AI](https://github.com/user-attachments/assets/ba718451-ac90-41bb-9d56-bf42c65667d2)

:::
::::

# Simulators...

To achieve our goal, it necessary to understand of the soil behaves

Simulate the soil behavior according to physical models [@van1980closed]

- However a fine tuning is required, we need to know/parametrize everything
    - Soil (e.g., retention curve, hysteresis [@pham2005study])
    - Plant (e.g., roots, LAI)
    - Weather conditions (temperature, humidity, wind, precipitations)
    - Watering system (e.g., capacity, distance between drippers)
- Tuning can take months (of human interactions)!
    - Need to collect samples from the field… if some parameter is incorrect we need to trace back
    - Need to implement/code all these features into the simulator [@vsimunek2012hydrus] [@bittelli2015soil]
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

# Sensor Layouts and Symmetry Assumptions

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

# From Sensors to Soil Profiles [@francia2022multi]

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

# References