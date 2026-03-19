---
draft: true
---

# Anchor Page — Verified vs Unverified Video Prompts

## Step 1: Generate Start Frame (Seedream 5.0)

### Original Start Frame
**Prompt:**
A young professional Korean man in his mid-20s sitting at a desk during a video interview. He is wearing a clean dark navy crewneck sweater. Simple, slightly blurred home office background with a bookshelf. Natural soft lighting from the left. Webcam angle, slightly above eye level. He is looking directly at the camera with a calm, professional expression, about to speak. Shallow depth of field. Realistic, photographic quality. 16:9 aspect ratio.

---

## Step 2: Face Swap the Start Frame

Take the original start frame and apply a face swap using any face-swap tool. The swap should be:
- Noticeably different person but similar age/build
- Slightly uncanny — not terrible, but not perfect either
- The kind of swap that would pass a quick glance but feel "off" on closer look

This gives you two start frames:
1. `original_startframe.png` — the real person
2. `deepfake_startframe.png` — the face-swapped version

---

## Step 3: Generate Videos (Kling 3.0, image-to-video)

### Video A — Original Footage
**Input image:** `original_startframe.png`

**Prompt:**
The man speaks naturally during a video interview. Subtle head movements, natural blinking, occasional small hand gestures near the chest. Lips move as if explaining something calmly. Natural micro-expressions. Stable webcam framing. Soft ambient lighting. The background remains slightly blurred. Realistic, natural motion. 5 seconds, 16:9.

---

### Video B — Deepfake Footage
**Input image:** `deepfake_startframe.png`

**Prompt:**
The man speaks naturally during a video interview. Subtle head movements, natural blinking, occasional small hand gestures near the chest. Lips move as if explaining something calmly. Natural micro-expressions. Stable webcam framing. Soft ambient lighting. The background remains slightly blurred. Realistic, natural motion. 5 seconds, 16:9.

---

## Notes

- Use the SAME prompt for both videos — the only difference is the input start frame
- This is intentional: visually, both videos should look equally "real" and natural
- The point is that you CANNOT tell the difference by looking — only the signature can
- Both videos should loop cleanly (the person is mid-conversation, no start/end cues)
- Target: 1920x1080, 30fps, ~5 seconds, loopable
- After generation, place files at:
  - `/static/video/anchor-verified.mp4`
  - `/static/video/anchor-unverified.mp4`
