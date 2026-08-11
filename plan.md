# Home-Lab Subsea Robotics Portfolio Plan

Goal: build a small set of **buyable, runnable-at-home** projects that combine **hardware + software** and produce strong case studies for future employers in subsea robotics, field integration, and marine perception.

EIVA eLearning is part of the roadmap, not a separate side activity. Use it to learn the survey vocabulary, workflow structure, and QA/QC expectations that make the sonar and navigation repos read like real field work.

## What To Optimize For

- Small scope, but visible engineering depth.
- Clear ROS 2 architecture, Dockerized setup, and repeatable demos.
- Case studies that show integration, debugging, logging, and reproducibility.
- Avoid giant "general robotics" projects that look impressive but are hard to explain.

## Recommended Project List

### 1. BlueROV2 Inspection Stack

**Buy**
- BlueROV2 base kit
- Low-light USB camera or `exploreHD`
- Lumen subsea light
- Bar30 depth sensor

**Software**
- ROS 2 bringup package for camera, depth, and telemetry
- Dockerized launch workflow
- Recording/replay pipeline for demo runs
- Optional integration with BlueOS / ArduSub / QGroundControl

**Case study angle**
- "Built a modular subsea inspection platform with clean ROS 2 package boundaries and one-command deployment."

**Why it matters**
- Strong field-relevant signal.
- Lets you show systems thinking: power, comms, sensors, and logging.

### 2. Ping360 Sonar Mapping Demo

**Buy**
- Ping360 scanning sonar
- Mounting hardware for a tank, pool, or test bin
- Optional BlueROV2 integration later

**Software**
- ROS 2 wrapper or bridge
- Sonar visualization and bag replay
- Simple obstacle detection / occupancy projection pipeline

**Case study angle**
- "Built a low-visibility navigation and inspection workflow around imaging sonar."

**Why it matters**
- Sonar is a very credible subsea skill signal.
- Good for demonstrating data handling, calibration, and visualization.
- EIVA eLearning should shape the terminology, acquisition flow, and processing notes in this repo.

### 3. DVL-Based Navigation Rig

**Buy**
- Water Linked DVL A50
- Small compute platform or SBC
- Optional IMU / pressure sensor integration

**Software**
- ROS 2 driver integration
- State estimation / EKF fusion
- Current compensation and dead-reckoning logs

**Case study angle**
- "Built a GPS-denied navigation stack for underwater vehicle estimation."

**Why it matters**
- DVL integration is highly relevant to subsea operations.
- Shows you understand real navigation constraints, not just simulation.
- EIVA eLearning should inform the geodesy, timing, and patch-test framing used in the documentation.

### 4. Underwater Perception Bench

**Buy**
- A camera + light setup from the Blue Robotics ecosystem
- Optional clear tank or controlled water test setup
- A few simple calibration objects / markers

**Software**
- Open3D point cloud cleanup
- Underwater image enhancement
- 3D reconstruction or surface fitting
- Before/after quality metrics

**Case study angle**
- "Built a perception pipeline for degraded underwater imagery and point clouds."

**Why it matters**
- Lets you show practical perception work without needing a full vehicle build.
- Easy to demonstrate with screenshots, plots, and side-by-side comparisons.

### 5. Thruster + Depth-Control Test Stand

**Buy**
- T200 thrusters
- Bar30 depth sensor
- Small tethered test frame or tank mount
- Power supply and basic control hardware

**Software**
- Thruster characterization
- Depth-hold PID tuning
- Fault detection / saturation handling

**Case study angle**
- "Validated low-level control and actuator characterization for a subsea platform."

**Why it matters**
- Good proof that you can work at the control / integration layer.
- Useful if you want to target field engineer or vehicle integration roles.

## Best Purchase Order

If budget matters, buy in this order:

1. Camera + light + Bar30
2. Ping360
3. BlueROV2
4. DVL A50
5. Thruster test stand extras

This gives you usable projects early, before the expensive items land.

## Case Study Template

For every project, publish the same structure:

- Problem statement
- Hardware used
- ROS 2 graph and node boundaries
- Data flow diagram
- Deployment instructions
- Demo video or GIF
- Known failure modes and how you handled them
- What you would improve next

## GitHub Presentation Rules

- One repo per project, not one giant monorepo.
- `README.md` must include setup, wiring, and runtime screenshots.
- Docker should work from a fresh clone.
- Keep launch files and configs separate from algorithm code.
- Record at least one short demo video for every repo.

## Positioning Language

Use phrases like:

- subsea robotics workflow
- ROS 2 sensor integration
- underwater inspection pipeline
- GPS-denied navigation
- reproducible field deployment
- Dockerized robotics stack

Avoid leading with:

- generic software engineering
- hobby project
- UI-heavy demo
- “just a simulation”

## Practical Recommendation

If you want the strongest portfolio with controlled spend, start with:

1. `Camera + light + Bar30`
2. `Ping360`
3. `BlueROV2`

That sequence lets you publish real case studies before you commit to the DVL.

## Job Description Anchors

These roles are the target signals the portfolio should prove:

- `ROV Junior / Assistant Technician`: equipment checkout, maintenance, troubleshooting, launch/recovery support, and safe operations.
- `Hydrographic Survey Technician / Data Processor`: sonar or sensor data acquisition, QA/QC, calibration, processing, and deliverables.
- `AUV Field Operations Specialist`: mission execution, launch/recovery, vehicle readiness, survey outcomes, and field logging.
- `Marine Robotics Deployment & Integration Specialist`: sensor integration, system bring-up, packaging, documentation, and deployment automation.
- `Offshore Field Engineer (Subsea / Sensing)`: fault isolation, reliability, comms, test procedures, and support under field constraints.

## 6-Month Journey

### Month 1: ROV Technician Foundations

Build the first home-lab rig around the camera, light, and Bar30 sensor. Focus on wiring, power, startup scripts, and a basic ROS 2 bringup package that publishes telemetry cleanly.

Deliverables:
- One repo for the inspection stack.
- A hardware checkout checklist.
- A short demo showing camera, depth, and lighting working together.

Role anchor:
- `ROV Junior / Assistant Technician`

### Month 2: Inspection Workflow And Reliability

Add logging, replay, and fault checks. Make the rig behave like a field system instead of a toy by handling dropped frames, bad sensor readings, and repeatable startup/shutdown.

Deliverables:
- Dockerized launch flow.
- Bag replay or recorded-session playback.
- Basic fault detection and operator status output.

Role anchor:
- `ROV Junior / Assistant Technician`
- `Offshore Field Engineer (Subsea / Sensing)`

### Month 3: Sonar Survey Project

Buy and integrate the Ping360, then build a sonar mapping and visualization workflow. Treat this like a hydrographic task: collect data, inspect quality, and convert it into a usable map or occupancy product.

Deliverables:
- Sonar driver or bridge repo.
- Visualization and replay tools.
- A small sample survey around a pool, tank, or controlled test area.
- EIVA eLearning notes applied to acquisition, logging, and survey terminology.

Role anchor:
- `Hydrographic Survey Technician / Data Processor`

### Month 4: Hydrographic Data Processing Case Study

Turn the sonar data into a case study with QA/QC, filtering, and clear output artifacts. This month should emphasize processing discipline rather than hardware novelty.

Deliverables:
- Open3D or similar point cloud cleanup pipeline.
- Before/after quality metrics.
- A concise report with methodology and limitations.
- If the eLearning includes QA/QC, patch-test, or geodesy material, cite those concepts in the report and README where relevant.

Role anchor:
- `Hydrographic Survey Technician / Data Processor`

### Month 5: AUV Navigation And Mission Execution

Add the DVL A50 or simulate the same workflow if the budget is not ready yet. Build a navigation stack that fuses velocity, depth, and IMU data, then run a repeatable mission or station-keeping demo.

Deliverables:
- ROS 2 state-estimation package.
- Mission execution scripts.
- A mission log showing stable navigation behavior.
- Use EIVA eLearning concepts for timing, geodesy, and calibration language in the setup and acceptance criteria.

Role anchor:
- `AUV Field Operations Specialist`

### Month 6: Deployment And Integration Capstone

Consolidate the work into a portfolio-quality integration package. Focus on the things hiring managers and field leads care about most: startup reliability, documentation quality, troubleshooting clarity, and reproducible deployment.

Deliverables:
- A single "portfolio" README that links all projects.
- Clear architecture diagrams for each repo.
- A short case-study page or PDF for each project.
- CI or scripted checks that prove each repo still runs.
- Include a short note in the final portfolio README that EIVA eLearning informed the survey and navigation workflows.

Role anchor:
- `Marine Robotics Deployment & Integration Specialist`
- `Offshore Field Engineer (Subsea / Sensing)`
