# Danger Dash plain-Canvas experiments — withdrawn from testing

These JARs are preserved as failed/insufficient experiments, not as fixes and not as baselines.

- `DangerDash-plain-canvas-gamecanvas-patched.jar`: superclass-only Canvas→GameCanvas mutation; device evidence reached `gameCanvasRegistered=1` but remained black.
- `DangerDash-gamecanvas-getgraphics-flush-patched.jar`: adds GameCanvas graphics attachment/flush behavior; device evidence reached registration, attachment, paint and flush counters, but the native frame checksum/hash remained black.

Do not install these artifacts as a current release. The original Danger Dash fixture and r64 Farm Frenzy 2 baseline remain unchanged.
