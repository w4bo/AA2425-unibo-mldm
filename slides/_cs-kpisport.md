# Training KPIs

![Lucy Charles-Barclay Wins Ironman 70.3 World Championship (2021)](https://www.triathlonvibe.com/wp-content/uploads/2021/09/lucy-charles-finish-donald-mirralle-ironman.jpg)

We are preparing for a race and we need create a proper plan

- What are the main aspects to consider?

# Training KPIs

Risks of Poor Planning:  

- Overtraining  
- Underperformance  
- Increased risk of injury  

How can we quantify all these aspects?

- We need to minimize *fatigue* (i.e., short-term stress from recent training)
- Maximize the *fitness* (i.e., long-term training adaptations)
- Performance Readiness: Achieved when fitness is high, and fatigue is low.  

Key Questions to Answer:  

- What is your current fitness level?  
- How much fatigue are you carrying?  
- How do you time your taper for optimal performance?  

# Introduction to Sport KPIs

- Key Performance Indicators (KPIs) are measurable values that track performance and progress toward a goal.  
- Why use KPIs in training?  
  - Objectively measure improvements  
  - Balance training intensity and recovery  
  - Prevent overtraining or undertraining  

- `Training Load` ($TL$): A measure of the stress placed on the body during exercise.  
  - $TL = Duration × Intensity$
  - Units: $TSS$ (Training Stress Score), RPE (Rate of Perceived Exertion)  

# How do we quantify intensity?

Let's focus on a specific sport, cyclism

# How do we measure watts?

We have sensors!

![Power meters](https://www.cyclistshub.com/wp-content/uploads/2021/11/how-to-choose-a-power-meter.png)

Cycling power meters measure torque using strain gauges.

- The strain gauges measure a rider’s force on a given component (pedal, crank, etc.).
- This torque is later converted to power by multiplying it by that component’s cadence (angular velocity). 

# Intensity Factor (IF)

Intensity Factor: a measure of workout intensity relative to FTP.  

- $IF = \frac{\text{Normalized Power (NP)}}{\text{FTP}}$

- Purpose:  
  - Compare the intensity of different sessions.  
  - Optimize training stress relative to fitness.  
- Ranges:  
  - Easy recovery: IF < 0.65  
  - Moderate endurance: IF 0.65–0.85  
  - High-intensity intervals: IF > 0.85  

# Functional Threshold Power (FTP)

Functional Threshold Power: The highest average power (measured in watts) a cyclist can sustain for 60 minutes.  

- Purpose:  
  - Benchmark for training zones  
  - Indicates overall cycling fitness  
- Testing Methods:  
  - 20-minute time trial: FTP = 95% of average power.  
  - Ramp or step tests with smart trainers.  

# Using FTP and IF in Training

- Tracking Progress:  
  - Test FTP every 4–6 weeks.  
  - Monitor IF for each workout to ensure proper intensity.  

- Balancing Work and Recovery:  
  - Use IF to adjust training load:  
    - Too high = risk of overtraining.  
    - Too low = insufficient stimulus for improvement.  

# Normalized Power (NP)

Normalized Power (NP) is a metric developed to better quantify the physiological demands of cycling, especially for rides with variable intensity.

Unlike average power, NP accounts for the variability in effort during a ride, reflecting how the body responds to the stress.

1. Divide the Ride into 30-Second Moving Averages:
   - Calculate the rolling average power for every 30-second interval throughout the ride.  
   - This smooths out short-term power fluctuations.

2. Raise Each 30-Second Average to the Fourth Power:  
   - $P_{\text{30-sec}}^4$  
   - This step emphasizes higher power outputs, as intense efforts contribute disproportionately to physiological stress.

3. Take the Average of All Fourth Powers:  
   - Compute the average of all $P_{\text{30-sec}}^4$ values over the entire ride.  

4. Take the Fourth Root of the Result: 
   - Finally, calculate the fourth root of the average from Step 3.  
   - $\text{NP} = \sqrt[4]{\text{average of } P_{\text{30-sec}}^4}$

$\text{NP} = \sqrt[4]{\frac{\sum_{i=1}^{n} P_{\text{30-sec},i}^4}{n}}$  

Why Use Normalized Power?  

- Reflects Physiological Stress: High-intensity intervals are more stressful than steady-state efforts, even if the average power is the same.  
- Improves Comparisons: Allows riders to compare efforts from rides with different intensity profiles.  

# Example Calculation

Assume a ride where the power output varies as follows over a series of intervals (in watts): 200, 250, 300, 400.  

1. Compute 30-second moving averages:  
   $P_{\text{30-sec}}$: 200, 250, 300, 400.  
2. Raise each value to the fourth power:  
   $P^4$: $200^4, 250^4, 300^4, 400^4$.  
3. Take the average of $P^4$.  
4. Find the fourth root of the result.  

# Training Zones

Training Zones Based on FTP:

1. Active Recovery: <55% of FTP  
2. Endurance: 56–75% of FTP  
3. Tempo: 76–90% of FTP  
4. Threshold: 91–105% of FTP  
5. VO₂ Max: 106–120% of FTP  
6. Anaerobic Capacity: >120% of FTP  

# Training Zones 

Heart rate (HR) training zones are commonly used to structure workouts based on intensity.

These zones are typically calculated as percentages of your maximum heart rate (HRmax) or heart rate reserve (HRR). Here's an overview of the zones:

- *Zone 1*: Active Recovery (50–60% HRmax)
  - Purpose: Promote recovery after intense workouts. Build a strong aerobic foundation.  
  - Effort Level: Very light; easy conversation possible.  

- *Zone 2*: Endurance (60–70% HRmax)  
  - Purpose: Improve fat metabolism and aerobic efficiency. Ideal for long-duration, steady-state activities.  
  - Effort Level: Comfortable; conversation is sustainable.  

- *Zone 3*: Tempo (Moderate; 70–80% HRmax)
  - Purpose:  Increase aerobic capacity. Transition zone between endurance and threshold training.  
  - Effort Level: Moderate; conversation is more challenging.  

- *Zone 4*: Lactate Threshold (Threshold; 80–90% HRmax)
  - Purpose: Improve lactate clearance and sustain high-intensity efforts. Enhance race-specific endurance.  
  - Effort Level: Hard; limited conversation possible.  

- *Zone 5*: VO₂ Max (90–95% HRmax)  
  - Purpose: Increase maximum aerobic capacity (VO₂ Max). Develop speed and power.  
  - Effort Level: Very hard; speaking is difficult.  

- *Zone 6*: Anaerobic Capacity (95–100% HRmax)
  - Purpose: Develop short bursts of power and speed. Improve sprinting ability and neuromuscular coordination.
  - Effort Level: Maximum effort; no conversation possible.  

# Calculating Heart Rate Zones

Based on HRmax  

- $\text{HRmax} = 220 - \text{age}$ (or test it during a maximum effort session).  
- Multiply HRmax by the percentage for each zone.

Based on HR Reserve (HRR)  

- Karvonen Formula: $\text{Target HR} = \text{Resting HR} + (\text{HRmax} - \text{Resting HR}) \times \text{Zone %}$  

Example: For a 40-year-old athlete  

- HRmax = 220 - 40 = 180 bpm  
- Resting HR = 60 bpm  
- Zone 2 (60–70% of HRR): $60 + (180 - 60) \times 0.60 = 132 \, \text{to} \, 60 + (180 - 60) \times 0.70 = 144 \, \text{bpm}$

# Quantifying `Fitness`

# Quantifying `Fitness`

Subjective Indicators:  

- Confidence in handling race demands.  
- Past performance in similar conditions.  

Defining Preparation Levels:  

- Low: Minimal consistent training.  
- Moderate: Regular training but lacks race-specific intensity.  
- High: Consistent, race-specific training with effective recovery phases.  

# Quantifying `Fitness`

Sport unaware

- CTL (Chronic Training Load): Reflects long-term fitness trends.  
- VO$_2$ Max: Measures aerobic capacity.  

Sport aware

- Functional Threshold Power (FTP): Cycling performance indicator.  
- Critical Swim Speed (CSS): Endurance swimming capacity.  

# Chronic Training Load ($CTL$)

Long-term training stress, measured over the past 42 days.  

- Purpose: Reflects overall fitness level.  
- $CTL = \frac{\text{Sum of daily TL over 42 days}}{42}$

# Quantifying `Fatigue`

# Quantifying `Fatigue`

Defining Fatigue:  

- Accumulated stress from training and daily life.  
- Can be physical, mental, or both.  

Key Problems in Quantification:  

- *Subjectivity*: Perceived exertion varies by individual.  
- *Delayed Effects*: Fatigue may appear days after intense training.  
- *External Factors*: Sleep, nutrition, and stress influence fatigue but are hard to measure precisely.  

Subjective Indicators:  

- Heavy legs, decreased motivation, poor sleep.  

# Quantifying `Fatigue`

Objective indicators

**Acute Training Load (ATL)**:

- Measures short-term fatigue (last 7 days).  
- High ATL often means high stress, requiring recovery.  

**Heart Rate Variability (HRV)**:  

- Declines with increased fatigue or insufficient recovery.  

# Acute Training Load ($ATL$)

Definition: Short-term training stress, typically measured over the past 7 days.  

- Purpose: Reflects recent training intensity and fatigue.  
- $ATL = \frac{\text{Sum of daily TL over 7 days}}{7}$

# Strategies to Avoid Overtraining

1. Periodization:  

  - Alternate between high and low-intensity weeks.  
  - Include rest and recovery phases.  

2. Monitor Key Metrics:  

  - Maintain a positive TSB for readiness.  
  - Watch for declining HRV or chronic fatigue.  

3. Adjust Based on Feedback:  

  - Reduce intensity or volume if fatigue accumulates.  
  - Focus on recovery activities (e.g., yoga, massage). 

4. Tapering Before the Race:  

  - Gradual reduction in training volume to reduce fatigue while maintaining fitness.  

# Quantifying Preparation:  

- Prioritize recovery during taper to reduce ATL without losing CTL.  

- Training Stress Balance (TSB): \(\text{Performance Readiness} = \text{Fitness (CTL)} - \text{Fatigue (ATL)}\)

- Training Adjustments:  
  - If CTL is low, focus on increasing training volume or intensity.  
  - If ATL is high, incorporate rest days or low-intensity sessions.  
  - Monitor Training Stress Balance (TSB):  
    - Positive TSB: Indicates readiness.  
    - Negative TSB: Indicates fatigue.  

- Tapering Strategy:  
  - Reduce training volume by 40–60% over 1–3 weeks.  
  - Maintain intensity to preserve fitness.  


# Practical Guidelines for Race Day Readiness  

- Key Metrics to Monitor:  

    1. Fitness: Maintain a high CTL relative to past races.  
    2. Fatigue: Lower ATL during taper to avoid carrying excessive stress.  
    3. TSB: Aim for a positive balance (e.g., +10 to +20) before race day.  

- Checklist for Final Preparation:  

    - Conduct a final fitness test 2–3 weeks before the race.  
    - Track subjective feelings and adjust the taper as needed.  
    - Focus on sleep, nutrition, and hydration during the taper period.  


# Critical Swim Speed (CSS)

- Definition: The speed a swimmer can maintain continuously without exhaustion.  
- Calculation:  
  From time trials:  
  $\text{CSS} = \frac{\text{400m time} - \text{200m time}}{200m}$  
- Purpose: Optimize race pacing and aerobic capacity.  

# VO₂ Max

- Definition: Maximum rate of oxygen consumption during intense exercise.  
- Units: mL/kg/min  
- Purpose:  
  - Indicator of aerobic capacity  
  - Improves with endurance training  

# Heart Rate Variability (HRV)

- Definition: Variations in the time interval between heartbeats.  
- Purpose:  
  - Higher HRV = Better recovery  
  - Lower HRV = Possible fatigue or stress  

# KPI Dashboard for Race Planning

Key Metrics to Monitor:  

- $ATL$: Short-term fatigue  
- $CTL$: Long-term fitness  
- $TSB$: Recovery and readiness  
- $CSS$: Pacing and endurance  
- $VO_2 Max$: Aerobic capacity  
- $HRV$: Recovery status  

Tools:  

- Wearable devices  
- Training apps (e.g., TrainingPeaks, Strava)  

# Example KPI Dashboard for Cyclists
| Metric       | Purpose                                | Ideal Range           |
|--|-|--|
| FTP          | Fitness benchmark                     | Test periodically     |
| IF           | Workout intensity relative to FTP     | Adjust for fatigue    |
| NP           | Adjusted stress for variable rides    | Match training zones  |
| TSS          | Overall training stress               | Balance weekly totals |
| HRV          | Recovery and readiness                | Monitor daily trends  |