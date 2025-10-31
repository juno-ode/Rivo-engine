<img width="120" height="120" alt="extension_icon (5)" src="https://github.com/user-attachments/assets/01240c18-032d-4fdb-9ea4-ba42d6b6f2af" />
 **Rivy Game Engine (made in rust)** `Demo`






https://github.com/user-attachments/assets/c3adc22c-8a21-437f-b707-dd00141fc2df



**Rivy** is a lightweight game engine built on top of **Raylib** and **Bevy ECS**.  
It is designed to be **easy to use**, **CPU-friendly**, and **beginner-friendly** while still giving you the power of ECS.  
---
⚠️ Not done adding all of raylibs func and right now it is just a bevy_ecs wrapper for Raylib
---

## Installation Guide 
- ⚠️ **might have to use admin privliages to run the makefile** 
- ⚠️ **for window and mac you might have to go to the raylib github to install the dependencies and if on linux the makefile only dowloads the dep on debian linux distros** 
- **Install cmake and make**
- **First run the make file By doing In the terminal** -> `cd Rivy-engine` Then run -> `make dep`
- **To use Rivy Without Downloading The Source Code you have to add** (`rivy = { git = "https://github.com/juno-ode/Rivy-engine.git", subdir = "rivy" }`) under `[dependencies]` in your project `Cargo.tmol` file

---

## Features

- 🏎️ **Raylib integration** → simple and fast rendering  
- 🧩 **Bevy ECS** → modern entity-component-system architecture   
- ⌨️ **Input system** -> For geting keybord input's `runtimesys.rs`
- 🖼️ **Customizable draw system** → add any 3D draw function in `draw3d.rs`  
- 🪟 ** Default Main loop and window setup** → handled in `wint.rs` (`you can make a custom one`)  
- 📦 **Library exports** → managed through `lib.rs` and `prelude.rs`  

---

## Roadmap

- ✅ default Core engine loop (`winit.rs`) `you can make a custom winit`  
- ✅ 3D/2D drawing (`draw3d.rs`)  
- ✅ keybord input system  (`runtimesys.rs`)   
- ✅ GUI Editor `https://github.com/juno-ode/Rivy_GUIeditor/`
- 🔄 Add more Raylib functions **Coming soon**  
- ✅ audio system **you can use Raylibs built in audio sys**
- 🔄 physic intergration **Coming soon**
- 🔄 and More 
---

## Notes
- you can aso make your own app sturct for rivy 
-File winit.
- Files `game.rs` and `add.rs` are **not needed** right now.  
- `lib.rs` links everything together so you can easily `pub use` the engine via `prelude.rs`.  
- To chang any value of camera at runtime instead of doing, example cam.position.x you have to do cam.camera3d.position.x
### At a glance
- ✔️ What Rivy is  
- ✔️ How it’s structured  
- ✔️ What’s coming next  
