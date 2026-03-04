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
  td { border: 1px solid #334155; padding: 0.4em 0.8em; }
  tr:nth-child(even) td { background: #1e293b; }
  footer { color: #64748b; font-size: 0.75em; }
  header { color: #38bdf8; font-size: 0.8em; }
header: "Getting Started in HAM Radio — 2026"
---

<!-- _class: section-title -->

# Radio Modes
## Phone, SSB, Digital — The Full Palette

---

## Understanding Modes

**A "mode" is how information is encoded onto a radio signal.**

### The three fundamental categories:

```
ANALOG VOICE          DIGITAL VOICE         DATA / WEAK SIGNAL
─────────────         ─────────────         ──────────────────
FM (Frequency Mod)    DMR                   CW (Morse)
AM (Amplitude Mod)    D-STAR                FT8 / FT4
SSB (Single Sideband) C4FM / Fusion         JS8Call
                      M-17                  RTTY
                      FreeDV (hybrid)       VARA / Winlink
                                            APRS
                                            PSK31
```

### Why does this matter?
Different modes excel at different things:
- **FM** — clear voice, simple hardware, short range
- **SSB** — long range voice with modest power
- **FT8** — contacts at the noise floor, automated
- **VARA** — robust data transfer over poor HF paths

---

## FM — The Starter Mode

**Most Technician operators begin on FM.**

### How FM works:
- **Frequency Modulation** — voice varies the carrier frequency
- Clean, full-quieting audio when signal is strong
- Cliff-edge reception: strong = crystal clear, weak = noise, nothing in between

### 2-meter FM (144–148 MHz):
- Most active HAM band for new operators
- **Repeaters everywhere** — extend handheld range to 30–100+ km
- Repeater directories: `repeaterbook.com`
- **CTCSS/DCS tones** — subaudible tones to open repeaters

### 70cm FM (420–450 MHz):
- Less congested than 2m in many areas
- More repeaters, digital voice repeaters
- APRS digipeaters and satellites

### Getting started with FM:
- **Baofeng UV-5R** (~$25) — inexpensive, controversial, works
- **Yaesu FT-65** (~$75) — quality budget handheld
- **TYT MD-380** (~$65) — FM + DMR digital voice
- **Wouxun KG-935G** — FM + GMRS capable

---

## SSB — Single Sideband

**The workhorse of HF communication.**

### The physics:
- AM has two sidebands + carrier — SSB strips one sideband and the carrier
- **~6 dB gain** in effective power over AM
- **More efficient bandwidth** — fits more contacts in same spectrum
- Sounds "choppy" to untrained ears but crystal clear once you tune it

### LSB vs USB:
- **LSB (Lower Sideband):** 40m, 80m, 160m — *"Lower bands, Lower sideband"*
- **USB (Upper Sideband):** 20m, 17m, 15m, 12m, 10m, 6m, VHF/UHF

### Why SSB?
- **DX** — talking across continents with 100W or less
- **QRP** — very low power (5W or less) — global contacts are achievable
- **Emergency communications** — reliable when infrastructure is gone
- **Contesting** — rapid-fire contest exchanges

### Equipment:
- **Icom IC-7300** — the gold standard entry HF rig (~$1,100)
- **Xiegu G90** — budget SDR-based HF radio (~$400)
- **Icom IC-705** — portable, all-mode, SDR-based (~$1,300)

---

## FT8 — The Digital Phenomenon

**FT8 changed HF amateur radio forever when released in 2017.**

### What is FT8?
- **Frequency-shift keying** digital mode by K1JT and K9AN
- 15-second transmission cycles (FT4 = 7.5 seconds)
- Extreme weak-signal performance: contacts at **-20 dB SNR**
- Fully automated logging possible via WSJT-X software

### The workflow:
```
Open WSJT-X → Tune to FT8 frequency → Watch decodes appear
→ Double-click a station → Exchange automated → Log confirmed contact
```

### Why it's revolutionary:
- QRP (5W) contacts to Europe from a wire antenna in a small yard
- Opens up HF for people with HOA antenna restrictions
- Proves a contact is possible when voice conditions are too poor
- Massive uptake: FT8 is now **the most popular HF data mode**

### Controversy:
> "It's not *real* radio — a computer does everything!"
> vs.
> "It's the most efficient use of spectrum ever devised."

Both sides have a point. FT8 is a tool — use it to *get on HF*, then explore.

---

## JS8Call, APRS & Weak Signal Modes

### JS8Call — Keyboard FT8
- Based on FT8 encoding, but **human-typed messages**
- Much slower but conversational
- SNR performance nearly as good as FT8
- **Emergency/resilience use:** store-and-forward, relay mode
- Great for off-grid communities wanting text comms over HF

### APRS — Automatic Packet Reporting System
- **144.390 MHz** in North America (144.800 in EU)
- GPS position beacons, weather data, text messages
- `aprs.fi` — live map of all APRS activity worldwide
- Digipeaters extend range, I-Gates connect to internet
- Supported in Kenwood, Yaesu, and virtually all modern radios

### Other digital modes:
- **PSK31** — classic keyboard-to-keyboard mode, narrow bandwidth
- **RTTY** — radioteletype, still used in contesting
- **Olivia** — extremely robust, keyboard chat, poor conditions
- **WSPR** — Weak Signal Propagation Reporter, beacon mode for propagation testing

---

## VARA & Winlink

**Email over radio — real, practical, emergency-proven.**

### Winlink:
- **Email system** that works entirely over radio
- No internet required at the operator end
- Used by **ARES, RACES, Red Cross, Coast Guard, cruisers**
- Access via HF (Pactor, VARA HF), VHF (VARA FM, Packet)

### VARA HF & VARA FM:
- **VARA** by EA5HVK — proprietary but free-to-use modem
- **VARA HF:** Adaptive HF data modem, 10–10,000 bps depending on conditions
- **VARA FM:** Fast local VHF/UHF data transfer, up to 9600 bps
- Dramatically faster and more robust than older Pactor hardware modems

### Getting started with Winlink:
1. Install **Winlink Express** (free, Windows)
2. Install VARA HF or VARA FM (free trial, $69 to register)
3. Connect a radio to your PC (Digirig, SignaLink, or CAT cable)
4. Send your first radio email through a Winlink gateway

> *When cell towers and internet are down, Winlink keeps emergency teams in contact.*

---

## FreeDV — Open Source Digital Voice for HF

**The open alternative to proprietary digital voice on shortwave.**

### What is FreeDV?
- Open source, open standard digital voice mode for HF
- Uses **Codec2** — an open source voice codec by David Rowe (VK5DGR)
- Modes: **FreeDV 700D, 1600, 2020** — different bandwidth/quality tradeoffs
- Designed for HF propagation challenges — splatter-resistant, robust

### Why it matters:
- **No proprietary hardware required** — run on any SSB radio + PC
- Codec2 is also used in M-17, the next-generation digital voice protocol
- Community-driven development, fully documented
- Outperforms SSB voice in poor conditions (some modes)

### Getting started:
- Download **FreeDV GUI** (free, cross-platform)
- Connect radio to PC via audio interface (Digirig, SignaLink)
- Find activity on **14.236 MHz USB** (primary HF FreeDV frequency)
- Also: 7.177 MHz (Europe), 3.625 MHz (80m)

> FreeDV represents the open-source ethos applied to radio —
> no company owns it, no hardware vendor controls it.
