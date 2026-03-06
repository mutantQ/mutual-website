---
title: "Hardware-rooted content authenticity"
description: "We sign camera output at the moment of capture. Before software can touch it."
showHeadingAnchors: false
---

<img src="/img/hero-flow.png" alt="Sign at capture, verify anywhere, mutual's hardware signing flow" style="width: 100%; max-width: 100%; border-radius: 12px; margin-bottom: 2rem;">

Real and fake media sit side by side, and the line between them is vanishing. As generative AI improves, software-based detection is a losing game.

We changed the question: instead of detecting fakes, we let real content prove its origin. **SRA (Signing Right Away)** signs media at the moment light hits the sensor, using hardware-bound cryptographic keys that never leave the device.

---

## What we build

<img src="/img/chain-of-custody.png" alt="Chain of custody: Sensor → SRA Module → Storage → Display" style="width: 100%; max-width: 100%; margin: 1rem 0;">

**On-device signing hardware** that creates a cryptographic chain of custody from sensor to screen. Every frame is signed before software can modify it, making forgery detectable and authenticity verifiable.

Our approach is compatible with [C2PA](https://c2pa.org/) and builds on ARM TrustZone for hardware isolation.

---

## Why it matters

<img src="/img/detect-vs-prove.png" alt="Current approach (detect fakes) vs mutual's approach (prove authenticity)" style="width: 100%; max-width: 100%; margin: 1rem 0;">

Generative AI has made it trivial to create convincing fake media. Detection algorithms are in a losing arms race. The only sustainable solution is **proving authenticity at the source**, not detecting fakes after the fact.

---

<div style="text-align: center; margin: 2rem 0;">
<a href="/about/" style="display: inline-block; padding: 0.75rem 2rem; background-color: rgb(74, 139, 156); color: white; text-decoration: none; border-radius: 4px; font-weight: 500;">Learn more about mutual</a>
</div>
