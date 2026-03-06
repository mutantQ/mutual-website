---
title: "AttentionX Cohort VII Application"
date: 2026-02-21T12:00:00+09:00
description: "My application to AttentionX Cohort VII"
summary: "My application to AttentionX Cohort VII"
tags: ["startup", "mutual", "attentionx", "application"]
showTableOfContents: true
---

This is my application to [AttentionX](https://attentionx.org/) Cohort VII. Some parts have been lightly edited before publishing.

## Notable Technical Projects

### mutual / SRA (Signing Right Away) - 2024-Present

[https://mutual.work/blog/introducing-mutual/](/blog/introducing-mutual/)

I'm building a company around a question most people are asking backwards: instead of "how do we detect AI fakes?", I ask "how do we let real content prove itself?"

SRA is a hardware-rooted architecture that cryptographically signs media at the image sensor - before software can touch it. The signal path from sensor to file is protected by authenticated encryption (AES-GCM), decrypted only inside a TEE, and signed with C2PA credentials. Tampering is mathematically detectable, not heuristically guessed.

I wrote the original whitepaper in Spring 2024, then spent 18 months in military service. When I returned, I gathered collaborators and tried to reverse-engineer MIPI CSI-2 without documentation. It didn't work - glitchy feeds, insufficient FPGA memory, unstable pipelines. But that experience taught us exactly what we needed. Two days after pitching the revised architecture to Kay Woo (MVL Labs CEO), we had our first angel check.

**My contribution:** Conceived architecture, authored whitepaper, led FPGA prototyping, pivoted strategy from custom silicon to reference architecture, raised angel funding.

### Q-Guided Flow Q-Learning - CoRL 2025 Workshop RemembeRL

[https://openreview.net/forum?id=MFY9i3uR7S](https://openreview.net/forum?id=MFY9i3uR7S)

I developed an RL training framework that's mathematically equivalent to Flow Q-Learning but decouples actor and critic training. Result: faster hyperparameter iteration and improved computational efficiency. Accepted at the Conference on Robot Learning workshop.

**My contribution:** Lead author. Designed the training framework, ran experiments, wrote the paper.

*Note: The paper was accepted, and we are currently improving and extending it.*

---

## Notable Experiences

### Attention Ownership - Proposing a New Human Right (2022)

> "If you're not paying for the product, you are the product."

In 2022, I worked with a team of four as editors for Seoul National University's Institute for Future Strategy. We started from this premise and followed it to its conclusion. When services are "free," the business model is extraction - of data, of behavior, of attention. Platforms don't serve users; they harvest them.

Many have criticized this phenomenon. What we did differently was propose a solution: we coined the term "attention ownership" and framed it as a basic human right - your fundamental right to decide what you focus on, how your cognitive resources are allocated, and who gets access to your mind.

The essay was published in *Living Ideas from Future Observers* (available in Korean bookstores).

The framing matters. Criticizing platforms is easy. Proposing that attention ownership should be a protected right - like privacy or free speech - changes the conversation. It moves from "this is bad" to "here's what we're owed."

This isn't anti-technology. It's anti-extraction. People should be able to pay for services that respect them, or at minimum understand when they're being monetized.

mutual shares this philosophy, but attacks a different problem. Attention ownership is about the right to control your focus. mutual is about the ability to distinguish what's real from what's fake. Both are about returning agency to people in systems designed to take it from them.

### Competing with PhDs as an Undergraduate - Military AI Security Research (2024-2025)

I served my mandatory military service as a Science & Technology Researcher at the Innovation Institute for Future Army. The assignment sounded prestigious until I arrived: my teammates were Master's and PhD researchers. I was an undergraduate.

The gap was real. They had years of research experience, deeper theoretical foundations, and established workflows. I had none of that. The pressure to keep up - to not be the weak link - was constant.

So I worked harder than I ever had. I read papers obsessively. I stayed late debugging code. I asked questions that probably seemed basic. Slowly, the gap closed. By the end of my service, I had co-authored papers at KICS 2025 and CISC-W 2024. I built DQN architectures for network penetration testing. I presented research on supply chain verification for military AI systems.

More importantly, I learned what it feels like to be outmatched and to close the distance anyway. That experience - the discomfort, the relentless effort, the eventual competence - is something I carry into mutual. Startups are full of moments where you're outmatched. The question is whether you close the gap or quit.

---

## What I'm Building and How It Relates to AI

mutual builds infrastructure that lets authentic content prove itself.

The internet is becoming a lemon market. Real and fake media sit side by side; as the asymmetry grows, trust erodes. Most approaches attack the problem at the end: classify pixels as real or fake. But as generative models improve, this is a losing game - the detector is always chasing the generator.

We changed the question: what if genuine content could prove its origin?

**SRA (Signing Right Away)** signs media at the moment light hits the sensor:
1. Image sensor signals enter the camera pipeline
2. Hardware-level protection via authenticated encryption (AES-GCM)
3. Decryption and signing happen inside a TEE - keys never leave hardware
4. Output: standard file with C2PA credentials anyone can verify

**Go-to-market:** Automotive dashcams. When collisions happen, insurers need footage they can trust. This is a narrow use case where provenance directly determines liability - perfect for proving product-market fit. We're piloting with insurance partners.

**Business model:** ARM-like IP licensing. We provide a reference architecture that works on any SoC with the right security primitives. We don't lock anyone to our silicon.

**AI relationship:** This is the inverse of generative AI. While models make creation trivially cheap, we make verification cryptographically trustworthy. As AI-generated content floods every channel, the ability to prove "this actually happened" becomes essential infrastructure.

---

## What Motivates Me and Why I'm Uniquely Qualified

**The timeline:**

- **2022:** I coin "attention ownership" - arguing that platforms steal our cognitive autonomy through information asymmetry
- **2024:** I write the SRA whitepaper, then enter military service
- **2024-2025:** I research AI security for the Korean Army - model poisoning, adversarial attacks, penetration testing with RL. I learn how systems break.
- **2025:** I return, gather a team, and fail at FPGA prototyping. The failure teaches us what we actually need.
- **Nov 4, 2025:** I pitch to Kay Woo (MVL Labs CEO)
- **Nov 6, 2025:** Angel investment decision. Two days.
- **Now:** Building mutual, recruiting a hardware co-founder

**Why me:**

1. **I've been thinking about this problem since 2022.** "Attention ownership" wasn't a buzzword for me - it was the intellectual foundation that led to mutual. I understand why this matters at a level beyond "AI fakes are bad."

2. **I understand how AI systems break.** My military research on model poisoning and adversarial attacks wasn't theoretical - I presented at KICS 2025 and CISC-W 2024. mutual is built by someone who thinks like an attacker.

3. **I've already learned the hard way.** Our FPGA prototyping experience taught us that custom silicon is the wrong path. We pivoted to an open reference architecture. I know what doesn't work.

4. **I got an angel check in 48 hours.** Kay Woo built TADA - 2 million riders, blockchain-based mobility across Southeast Asia. He doesn't write checks on vibes. He understood the technical thesis immediately.

5. **I ship.** ISEF finalist at 17. CoRL workshop at 24. Published book contributor. Three conference papers. I don't just think about problems - I turn them into artifacts.

---

## Previous Startup and Product Experiences

**mutual - Pre-founder (Oct 2025 - Present)**
- Designed SRA architecture from first principles and authored whitepaper
- Led FPGA prototyping; learned hard lessons about hardware limitations
- Pivoted from custom silicon strategy to open reference architecture
- Pitched Kay Woo on Nov 4; received angel investment Nov 6 (48 hours)
- Currently recruiting hardware engineer co-founder

**Military AI Security Research - IIFA (Apr 2024 - Oct 2025)**
- Researched model poisoning, adversarial attacks, RL-based penetration testing
- Published at KICS 2025 and CISC-W 2024
- Not a startup, but I built things: DQN architectures for network penetration, supply chain verification frameworks

**SOUL Project - Project Lead, KFAS (Feb 2023 - Feb 2024)**
- Built multi-agent RL simulation of international trade (Keynes' Bancor)
- Secured 10M KRW (~$7.5K) funding; managed compute and mentoring resources
- Led team through year-long research project from proposal to completion

**FHP-RTFS - Software Lead (Feb 2019 - Feb 2020)**
- Built real-time posture feedback system using computer vision
- Achieved 81% improvement in participants' forward head posture
- Korea Science Fair Gold (1st) → Regeneron ISEF Finalist (2020)

**Korea Biz-school Youth Startup Competition - Grand Award (2019)**
- 1st place nationally at age 17
- Awarded by Korean Minister of SMEs and Startups
- First experience pitching and winning with a product idea

---

## Future Plans

In 10 years, I want mutual to be the default infrastructure for content authenticity - the way TLS became the default for secure web connections.

**Short-term:** Ship the automotive dashcam pilot, prove product-market fit in insurance verification, and secure seed funding.

**Medium-term:** Expand to body cameras (law enforcement, journalism), consumer devices, and enterprise surveillance. License the reference architecture to camera OEMs.

**Long-term:** Make cryptographic provenance as invisible and ubiquitous as HTTPS. When someone asks "is this real?", there should be a definitive answer - not a probability score from a detection model.

I'll still be building. Whether that's mutual at scale or something new that emerges from what we learn, I want to be creating infrastructure that shifts power back to individuals.

---

## Why AttentionX

Three reasons:

1. **Research depth.** mutual sits at the intersection of hardware security, cryptography, and AI. AttentionX publishes at NeurIPS, ICML, ACL - this is a community that can pressure-test our technical assumptions and point us toward approaches we haven't considered.

2. **Startup network.** You've incubated YC-backed companies (Nari Labs, Typa AI, Hyprnote). I need to learn from founders who've gone from Seoul to global scale. The playbook for hardware + AI startups is still being written - I want to be in a room with people writing it.

3. **Seoul.** mutual is based here. AttentionX is based here. The Korean AI ecosystem is maturing fast, but it's still small enough that the right connections matter disproportionately. I want to be embedded in this community, not observing it from outside.

**What I want to get out of it:** co-founder candidates, technical feedback on SRA, investor introductions, and a peer group that holds me accountable.

**What I'll contribute:** a hardware security perspective that's rare in AI-focused communities, and everything I've learned about cryptographic provenance.
