# Building Runner - Prototype

This is a minimal Godot 4 prototype: a simple 3D runner where the player automatically moves forward across platforms (buildings).

How to run:
1. Download and install Godot 4 from https://godotengine.org
2. Clone or download this repository branch `proto-building-runner` and open it in Godot.
   - `git clone https://github.com/SansDoritos1337/Game.git`
   - `git checkout proto-building-runner`
3. Open project.godot in Godot.
4. Press Play to run the Main scene.

Controls (default Godot input actions):
- Left / Right (A/D or Left/Right arrows) to move sideways
- Space to jump

Notes:
- This is intentionally minimal: simple meshes, simple spawning of platforms. You can expand it by adding obstacles, collectibles, score, and polish.
- If inputs don't respond, open Project -> Project Settings -> Input Map and map `ui_left`, `ui_right`, and `ui_accept` to your chosen keys (A/D or arrow keys and Space).
