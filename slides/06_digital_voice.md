---
marp: true
theme: default
paginate: true
backgroundColor: "#0f172a"
color: "#e2e8f0"
style: |
  section { font-family: 'Segoe UI', sans-serif; background-color: #0f172a; color: #e2e8f0; }
  h1 { color: #38bdf8; border-bottom: 3px solid #f4a261; padding-bottom: 0.2em; }
  h2 { color: #f4a261; }
  h3 { color: #7dd3fc; }
  strong { color: #f4a261; }
  em { color: #86efac; }
  code { background: #1e293b; color: #86efac; padding: 0.1em 0.4em; border-radius: 4px; }
  a { color: #38bdf8; }
  ul li, ol li { margin-bottom: 0.35em; }
  section.lead { text-align: center; justify-content: center; }
  section.section-title { text-align: center; justify-content: center; background: linear-gradient(135deg, #0f172a 0%, #1e3a5f 100%); }
  section.section-title h1 { font-size: 2.5em; border-bottom: none; }
  table { border-collapse: collapse; width: 100%; }
  th { background: #1e3a5f; color: #38bdf8; padding: 0.4em 0.8em; }
  td { border: 1px solid #334155; padding: 0.4em 0.8em; background: #0f172a; color: #e2e8f0; }
  tr:nth-child(even) td { background: #1e293b; }
  footer { color: #64748b; font-size: 0.75em; }
  header { color: #38bdf8; font-size: 0.8em; }
header: "Getting Started in HAM Radio — 2026"
---

<!-- _class: section-title -->

# Digital Voice
## DMR · D-STAR · C4FM · M-17

---

## Why Digital Voice?

**Digital voice encodes your voice as data — enabling new capabilities.**

### Analog FM vs. Digital Voice:

| Feature | Analog FM | Digital Voice |
|---|:-:|:-:|
| Audio clarity (strong signal) | Excellent | Very Good |
| Audio in poor conditions | Degrades gracefully | "Cliff" effect |
| Bandwidth | ~16 kHz | ~6–12 kHz |
| Two channels in one slot | No | Yes (DMR) |
| Internet linking | Via repeater only | Native (IPSC2, etc.) |
| Encryption (ham: not allowed) | No | Technically possible |
| GPS/data embedding | No | Yes |
| Callsign display | No | Yes |
| Talkgroups/rooms | No | Yes |

> The killer feature: **worldwide talkgroups** — talk to Japan from a $60 hotspot

---

## DMR — Digital Mobile Radio

**The most widely deployed digital voice mode in amateur radio.**

### Origins:
- Commercial standard (ETSI), originally for business radio
- Adopted by amateur radio community due to cheap hardware
- **TDMA** — 2 time slots on one 12.5 kHz channel

### DMR Networks:
- **Brandmeister** — largest global amateur DMR network
- **DMR-MARC** — North America focused
- **TGIF** — alternative, more open network
- Talkgroups: `TG 91` (World English), `TG 93` (NA), regional/local TGs

---

## DMR: Hardware & Getting Started

### Hardware:
- **TYT MD-380/390** — ~$65, the original popular DMR HT
- **Radioddity GD-73** — compact, excellent value
- **Anytone AT-D878UV** — feature-packed, popular upgrade
- **Hotspot** — MMDVM or Pi-Star/BlueDV — connects to BrandMeister via Wi-Fi

### Getting started:
1. Buy a DMR radio
2. Register on <a href="https://radioid.net" target="_blank">radioid.net</a> for your **DMR ID** (free)
3. Program local repeaters or set up a hotspot
4. Join Talkgroup 91 and say hello

---

## D-STAR — Digital Smart Technologies for Amateur Radio

**The original amateur digital voice system — pioneered by JARL and Icom.**

### History:
- Developed by JARL (Japan Amateur Radio League), funded by MEXT
- First deployed commercially by Icom in the mid-2000s
- Open standard, but Icom dominates the hardware market

### D-STAR features:
- **AMBE+2** codec (proprietary, but widely licensed)
- **DV mode:** voice + 1200 bps low-speed data simultaneously
- **DD mode:** 128 kbps digital data (rare, specialized hardware)
- Callsign routing: `CQCQCQ` or specific callsigns across reflectors
- **Reflectors:** DCS, XRF, REF — link repeaters worldwide

---

## D-STAR: Ecosystem & Community

### Hardware & infrastructure:
- **DVMega, OpenSpot** hotspots — connect to reflectors via home Wi-Fi
- <a href="https://dstarinfo.com" target="_blank">dstarinfo.com</a>, <a href="https://dstarusers.org" target="_blank">dstarusers.org</a> — repeater directories and news
- **Icom IC-9700, ID-52, ID-51** — current popular radios

### D-STAR appeal:
- Excellent legacy infrastructure in many regions
- Very active in Japan and Europe
- Callsign-based routing feels natural to amateur operators
- Works well with modest antennas and handheld power levels

---

## C4FM — Yaesu System Fusion

**Yaesu's proprietary digital voice standard, with wide adoption.**

### What is C4FM?
- **C4FM** = Continuous 4-level FM — the modulation scheme
- Yaesu's brand name: **System Fusion**
- **AMBE+2** codec (same as D-STAR)
- Many C4FM repeaters run in **auto mode** — accepts both analog FM and digital

### WIRES-X Network:
- Yaesu's internet-linking platform
- **Rooms and Nodes** — similar to Echolink but C4FM native
- Thousands of rooms worldwide, many active communities

---

## C4FM: Why It Works

### Why operators like C4FM:
- Seamless analog/digital coexistence on same repeater
- Good audio quality with no extra setup for analog users
- WIRES-X rooms are easy to navigate directly from the radio
- Yaesu makes excellent radios: **FT-70D** (~$180), FT3DR, FTM-500D

### C4FM in 2026:
- Very active in North America, Japan, and Europe
- Compatible with **YSF** reflectors via Pi-Star/BlueDV hotspots
- Great entry point if your local club runs a Fusion repeater

---

## M-17 — The Open Standard

**The newest digital voice mode — and the most philosophically pure.**

### The problem M-17 solves:
> "Every major digital voice mode (DMR, D-STAR, C4FM) uses
> AMBE — a **proprietary, patented, expensive** codec.
> Amateur radio should use *open* technology."
> — M-17 Project

### What M-17 does differently:
- Uses **Codec2** — fully open source, originally by David Rowe VK5DGR
- **Open standard** — fully documented, no licensing fees
- Designed specifically for amateur radio (not a commercial repurpose)
- **Software-defined radio friendly** — can run in software

---

## M-17 in 2026

### M-17 in 2026:
- Growing repeater network and reflectors (<a href="https://m17project.org" target="_blank">m17project.org</a>)
- **MMDVM** support — runs on same hotspot hardware as DMR/D-STAR
- Hardware radios: **RadioHat, AIOC**, community-built hardware
- Supported in **OpenRTX** — open source radio firmware project

> M-17 is where the open source ethos meets digital voice.
> Watch this space — it's growing fast.

---

## Digital Voice: Side-by-Side Comparison

| Feature | DMR | D-STAR | C4FM | M-17 |
|---|:-:|:-:|:-:|:-:|
| Voice codec | AMBE+2 | AMBE+2 | AMBE+2 | **Codec2** |
| Open standard | Partial | Yes | No | **Yes** |
| Network | BrandMeister/TGIF | DCS/REF | WIRES-X/YSF | M17 Reflectors |
| Hardware cost | Low | Medium | Medium | Growing |
| Analog fallback | No | No | **Yes** | No |
| GPS/APRS | Yes | Yes | Yes | Planned |
| Time slots | **2 (TDMA)** | 1 | 1 | 1 |
| Popularity | Very High | High | High | Growing |
| Best for | Large networks | Legacy/Japan | Beginners | Open source |

---

## Digital Voice: Where to Start

### The practical advice:
- **Start with DMR** — cheapest hardware, biggest network
- **Add C4FM** if your local repeaters are Fusion
- **Explore M-17** — be part of building the future of open digital voice
