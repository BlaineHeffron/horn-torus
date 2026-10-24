# Nested Horn Torus Winder

**Live: https://blaineheffron.github.io/horn-torus/**

A beat-synced light show that draws curves on nested horn tori in up to 9 dimensions, in one self-contained HTML file (WebGL2, no build step).

- Each angle θₖ turns in its own plane at its own speed. Turns set the loop's shape, drift slides it in time, and per-plane speeds can be oscillated or driven by sound.
- Draw one closed loop, a fading trail of the head, or the full traced pattern rotated as one figure.
- Picture rotations in any dᵢ–dⱼ plane, with plane cycling, a live projection readout, and a "go to view" picker.
- 4D quaternion Julia and Kleinian fractals ride the loop. Focus depth zooms to the fractal's border, deeper for higher-dimensional scenes.
- Feedback trails, IFS echoes, kaleidoscope, oscillators, and beat/tempo detection from the mic or a track.
- Sound links from six frequency bands plus overall Volume and slow Loudness (quiet vs loud sections).
- Save, export, and import shows. `solstice.json` is an example show file.

## Run

Open `index.html` in a browser, or serve it locally so the microphone works (localhost is a secure origin):

```sh
./start.sh   # serves on http://localhost:9737 and opens it
./stop.sh
```

Keys: 1–9 scenes, [ ] shows, Space play, T tap tempo, S sync, H hide panel, F present.

## License

MIT
