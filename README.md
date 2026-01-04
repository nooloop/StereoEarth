# Stereo Earth

**A stereoscopic 3D globe viewer that renders Earth in true binocular depth**

Stereo Earth creates two side-by-side views of the Earth with slightly offset camera positions, simulating left and right eye perspectives. When viewed as a stereogram (cross-eyed or parallel viewing), your brain fuses the two images into a single 3D image with real depth perception. The application can also operate in anaglyph mode, if paired with red-cyan glasses.

## Features

- **Real 3D terrain** - Uses Cesium World Terrain with actual elevation data
- **Adjustable eye separation** - From 10 meters to 100 kilometers
- **Three stereo modes** - Cross-eye and parallel viewing, red-cyan anaglyph
- **Terrain exaggeration** - Enhance height differences up to 10x
- **Location search** - Quick jumps to locations by name or coordinates
- **Full navigation** - Keyboard and mouse controls
- **Real-time info display** - Eye separation, altitude, coordinates, viewing angle

## Requirements

- **Node.js** (version 14 or higher) - [Download here](https://nodejs.org/)
- **Modern web browser** - Chrome, Firefox, Edge, or Safari

## Quick Start

### All

1. Create a free [Cesium](https://cesium.com) account
1. Replace `INSERT CESIUM ION TOKEN HERE` with your Cesium token in `index.html`

### Windows
1. Double-click `start-windows.bat`
2. Open `http://localhost:8080` in your browser

### Mac/Linux
1. Open terminal in the project folder
2. Run: `chmod +x start-unix.sh && ./start-unix.sh`
3. Open `http://localhost:8080` in your browser

### Manual Start
```bash
node server.js
```

## How to View in 3D

### Cross-Eye Method (Default)

1. Position yourself about 2 feet from the screen
2. Cross your eyes slightly until the two images overlap
3. A third "ghost" image will appear in the middle - focus on it
4. The middle image will snap into 3D depth

**Tip:** Start with your finger between your eyes and the screen. Focus on your finger, then slowly move it toward the screen while keeping the Earth images in your peripheral vision.

### Parallel Method

1. Change "Stereo Mode" to "Parallel" in controls
2. Relax your eyes as if looking through the screen
3. The two images will drift together and fuse

**Note:** Cross-eye is easier for most people and works better on smaller screens.

### Anaglyph Method

1. Change to "Anaglyph Mode"
2. Wear a standard pair of red-cyan 3D glasses to view in 3D

## Controls

### Keyboard
| Key | Action                           |
|-----|----------------------------------|
| W/S | Move forward/backward            |
| A/D | Move left/right                  |
| Q/E | Move up/down                     |
| ↑/↓ | Increase/decrease eye separation |
| ←/→ | Rotate view                      |
| R   | Reset to default view            |
| T   | Toggle terrain exaggeration      |
| H   | Toggle help panel                |

### Mouse
- **Drag** - Rotate view
- **Scroll** - Zoom in/out
- **Middle-click drag** - Pan

## Understanding Eye Separation

The "eye separation" setting controls the distance between the virtual camera positions:

| Setting   | Best For           | Effect                        |
|-----------|--------------------|-------------------------------|
| 50-200m   | Cities, buildings  | Subtle depth, realistic scale |
| 500-2000m | Mountains, canyons | Strong 3D terrain             |
| 5-50km    | Mountain ranges    | Dramatic depth                |
| 50-100km  | Continental views  | Extreme depth, surreal        |

**Rule of thumb:** At higher altitudes, increase eye separation. At lower altitudes, decrease it.

## Technical Details

### Architecture
- **Cesium.js** - WebGL globe rendering engine
- **Cesium World Terrain** - Global high-resolution elevation data
- **Dual synchronized cameras** - Offset by eye separation distance

### How Stereo Sync Works
The application maintains two Cesium viewers. The left viewer is the "primary" that receives user input. On every camera change:

1. Get the primary camera's position, direction, up, and right vectors
2. Calculate offset positions along the right vector (±half separation)
3. Apply offsets to both viewers, keeping orientation identical
4. Cross-eye mode swaps which eye sees which offset

### Limitations
- No Street View integration yet (requires additional APIs)
- Cesium Ion free tier has usage limits
- Some terrain areas have lower resolution

## Troubleshooting

### "Error loading terrain"
- Check your internet connection
- The Cesium Ion token may have expired - get a new one

### Stereo effect not working
- Make sure both viewers are fully loaded (terrain visible)
- Try adjusting eye separation
- Try different stereo mode (cross vs parallel)

### Performance issues
- Reduce browser window size
- Close other GPU-intensive applications
- Try a different browser (Chrome often fastest)

## License

No License - feel free to modify and distribute.

## Credits

- [Cesium](https://cesium.com/) - 3D globe rendering
- Terrain data from Cesium World Terrain
- Imagery from Bing Maps

---

**Enjoy viewing Earth in true 3D!**

git branch -M main
git push -u origin main
