<img width="20" height="20" alt="extension_icon (3)" src="https://github.com/user-attachments/assets/da3733d6-5447-4b09-b6fd-a6ef0f2e424e" /> **Rivy Game Engine (made in rust)** `Demo`






https://github.com/user-attachments/assets/c3adc22c-8a21-437f-b707-dd00141fc2df



**Rivy** is a lightweight game engine built on top of **Raylib** and **Bevy ECS**.  
It is designed to be **easy to use**, **CPU-friendly**, and **beginner-friendly** while still giving you the power of ECS.  
⚠️ To use it Without Download you have to add (`rivy = { git = "https://github.com/juno-ode/Rivy-engine.git", subdir = "rivy" }`) under `[dependencies]` in your project `Cargo.tmol` file
⚠️ Not done adding all of raylibs func and right now it is just a bevy_ecs wrapper for Raylib

---

## Features

- 🏎️ **Raylib integration** → simple and fast rendering  
- 🧩 **Bevy ECS** → modern entity-component-system architecture   
- ⌨️ **Input system** -> For geting keybord input's `runtimesys.rs`
- 🖼️ **Customizable draw system** → add any 3D draw function in `draw3d.rs`  
- 🪟 **Main loop and window setup** → handled in `wint.rs`  
- 📦 **Library exports** → managed through `lib.rs` and `prelude.rs`  

---

## Roadmap

- ✅ Core engine loop (`winit.rs`)  
- ✅ 3D/2D drawing (`draw3d.rs`)  
- ✅ keybord input system  (`runtimesys.rs`)   
- 🔄 GUI Editor **Coming soon**
- 🔄 Add more Raylib functions **Coming soon**  
- 🔄 audio system **Coming soon**
- 🔄 physic intergration **Coming soon**
- 🔄 and More 
---

## Notes

- Files `game.rs` and `add.rs` are **not needed** right now.  
- `lib.rs` links everything together so you can easily `pub use` the engine via `prelude.rs`.  
- To chang any value of camera at runtime instead of doing, example cam.position.x you have to do cam.camera3d.position.x
### At a glance
- ✔️ What Rivy is  
- ✔️ How it’s structured  
- ✔️ What’s coming next  
