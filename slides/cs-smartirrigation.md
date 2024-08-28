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
    a decision support system that, knowing how to optimize KPIs, controls the watering system

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

:::
::: {.column width="50%"}

![Symmetry Assumptions](https://github.com/user-attachments/assets/00856965-4270-4d73-92b6-407cf536bfb3)

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
