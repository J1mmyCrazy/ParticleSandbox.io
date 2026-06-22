# CHROME ONLY

# Interactive WebGPU Particle Sandbox

This project is a real-time 2D particle simulation built using WebGPU. It allows users to interact with particles through different physics behaviors and visual modes. The system runs on the GPU using compute shaders for efficient updates.

---

## Features

### Simulation Modes
- Static  
- Gravity  
- Explosion  
- Orbit  
- Fire  
- Rain  
- Cursor Follow  

### Particle System
- GPU-based particle simulation  
- Ping-pong buffer updates  
- Supports up to 1000 particles  
- Real-time motion and physics  

### Interaction
- Left click: Attract particles  
- Right click: Repel particles  
- Keyboard controls for switching modes and adjusting values  

### UI
- Interactive HUD with controls  
- Particle count adjustment (0–1000)  
- Particle size control  
- Force and damping controls  
- Color selection options  
- Toggle trails, reset system, and hide HUD  

---

## Controls

Mouse:
- Left Click = Attract  
- Right Click = Repel  

Keyboard:
- 1–7 = Switch modes  
- Arrow Up/Down = Force  
- Arrow Left/Right = Damping  
- [ / ] = Particle size  
- - / + = Particle count  
- T = Toggle trails  
- R = Reset  
- H = Toggle HUD  

---

## Individual Reflection

I worked on implementing the core particle system and simulation logic. This included setting up the GPU buffers, compute shader, and multiple simulation modes such as gravity, explosion, orbit, and cursor-follow behavior.

One of the main challenges was getting the compute shader and particle updates working correctly using ping-pong buffers. Debugging GPU behavior required careful testing since small mistakes could break the simulation.

This project helped me better understand how to use the GPU for both simulation and rendering, and how to build an interactive graphics system with real-time controls.

## Classmates and Interests
- **Andrew**: Interested in game development  
- **Raymond**: Interested in visual design  
- **Diego**: Interested in the visual aspects of video games  

---

## A Place I Would Like to Visit
I would like to attend GDC. Every year I’ve wanted to go, but there has always been some kind of conflict that prevented me from going.

---

## Quest 1 – 2D Scene
In this quest, I created a pumpkin using multiple shapes and colors. I arranged the shapes carefully to form a stylized pumpkin face rather than placing them randomly.  

The goal of this project was to get comfortable rendering multiple shapes and combining them into something recognizable.

---

## Quest 2 – Animated 2D Scene
In this quest, I created the Sharingan eye from the anime *Naruto*. I applied two filters: Gaussian blur and 8-bit quantization.  

I initially experimented with a grayscale filter, but decided not to use it because it changed the visual style of the scene in a way I didn’t like.

---

## Quest 3 – Interactive 2D Scene
- Game of Life grid updated using a compute shader  
- Grid size of at least 256×256 with random initialization  
- Keyboard input to pause/resume and reset  
- Keyboard input to adjust simulation speed  
- 2D camera movement using keyboard (pan)  
- 2D camera zoom in/out  
- On-screen text instructions (HUD)  
- FPS display toggle (HUD)  
- Cells rendered with a fragment shader using distinct colors  

---

## Quest 4 – Dynamic Particle Scene
- Particle system physics implemented using a compute shader  
- Forces applied to particles (buoyancy, wind, gravity)  
- Particle lifespan with respawning and max particle count  
- Particle positions updated each frame using velocity  
- Boundary wrap-around for particles leaving the screen  
- Mouse interaction to attract particles in real time  
- Recognizable particle effects (fire and rainbow sparks)  
- Non-linear interpolation used for alpha fading  
- Scene composed of two simultaneous particle effects  
- Runs interactively with large particle counts (30,000+)  

---

## Quest 5 – Polygon Collision and Acceleration
- Point-in-polygon test implemented for convex shapes  
- Winding number test for non-convex shapes  
- Interactive collision feedback (inside vs outside)  
- GPU-based collision detection using compute shader  
- GPU readback with staging buffer for acceleration  
- Maintained performance with dense polygon data  
- Polygon assets loaded and rendered correctly  
- Convex and non-convex handling in the same system  
- Mouse tracking integrated with collision testing  
- Fully interactive collision system (not just console output)  

---

## Quest 6 – 3D Shapes
- Projective ray generation using a pinhole camera model  
- Camera translation and rotation controls  
- Adjustable focal length (x and y)  
- Object translation and rotation (x, y, z axes)  
- Intersection-based coloring for depth perception  
- At least three different ray-intersected shapes  
- Ray-cube, ray-sphere, and ray-cylinder implemented  

---

## Quest 7 – Volume Rendering
- Ray marching with orthogonal and projective cameras  
- BrainWeb volume data loading  
- Procedural volume generation using Perlin noise  
- Linear transfer function for visualization  
- Piecewise linear transfer function  
- Depth/false-color transfer function  
- DRR (absorption-based) rendering  
- Perlin noise terrain visualization  
- Fog/cloud effects using volume rendering  
- Interactive system with multiple datasets and modes  
