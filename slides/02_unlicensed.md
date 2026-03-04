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

# Unlicensed Radio
## Communicate Now, No Test Required

---

## FRS — Family Radio Service

**FRS is a free, license-by-rule service for everyone in the US.**

### The basics:
- **22 channels** shared with GMRS (Ch 1–22)
- **Power limits:** 0.5W on channels 8–14 (shared with GMRS), up to **2W** on FRS-only channels 1–7 and 15–22
- **No repeater access** — simplex only
- **Fixed antennas only** — the little bubble-pack radios

### Use cases:
- Family events, hiking, camping, theme parks
- Event coordination, neighborhood watch
- Gateway drug to radio — most people have used these

### Hardware:
- Motorola T600, Midland GXT1000, Baofeng FRS variants
- $20–60 for a pair at Walmart or Amazon
- **Limitation:** Short range, crowded channels, no privacy (it's radio!)

---

## MeshCore — Off-Grid Mesh Networking

**The most exciting unlicensed radio technology right now.**

### What is MeshCore?
- **LoRa-based** mesh radio network
- Uses **ISM bands** (915 MHz in US, 868 MHz EU) — *no license required*
- Long range: **1–30+ km** per node, longer with elevation
- **Text messaging, GPS position sharing, telemetry**
- Self-healing mesh — packets route around failures

### MeshCore vs. Meshtastic:
| Feature | MeshCore | Meshtastic |
|---|---|---|
| Protocol | Custom, optimized | Custom mesh |
| Primary use | Comms + networking | Maps + text |
| BBS/nodes | Built-in bulletin board | Plugin-based |
| Community | Growing fast | Very large |
| Hardware | Same LoRa hardware | Same LoRa hardware |

> Both are worth exploring — they use *identical hardware* and you can run either firmware

---

## MeshCore: Hardware & Getting Started

### Supported Hardware (~$25–60):
- **Heltec V3** — popular, built-in display, ESP32-S3
- **LILYGO T-Beam** — GPS built-in, great for tracking
- **RAK WisBlock** — modular, very low power, professional grade
- **Seeed WIO Tracker** — rugged outdoor option

### Getting started:
1. Buy a LoRa board (Heltec V3 is a solid start ~$20)
2. Flash MeshCore firmware (or Meshtastic)
3. Connect to the app on your phone via Bluetooth
4. Start messaging with anyone else on the mesh nearby

### Real-world use cases:
- **Hiking/camping** communication when cell is gone
- **Event coordination** without cell infrastructure
- **Emergency prep** — neighborhood mesh network
- **CERT/emergency teams** — building situation awareness
- Search and rescue support

> This is **genuinely revolutionary** for off-grid communication in 2026

---

## Beyond FRS and MeshCore

### Other unlicensed radio options:

**MURS (Multi-Use Radio Service)**
- 5 channels in VHF (151–154 MHz)
- Up to 2W, no repeaters
- Better range than FRS in some environments

**CB Radio (Citizens Band)**
- 40 channels at 27 MHz
- Up to 4W AM, 12W SSB (legal)
- Truckers, off-roading, skip DX on AM
- Still a legit community in 2026

**Wi-Fi & Bluetooth** — technically radio, FCC Part 15

### The unlicensed ladder:
```
Listen (RTL-SDR) → FRS → MeshCore/Meshtastic → GMRS → HAM
```
Each step builds skills and appreciation for the radio hobby.
No step is mandatory — but each one opens new doors.
