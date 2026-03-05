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

# Step 1: Start Listening
## RTL-SDR — Your $30 Radio Scanner

---

## What is RTL-SDR?

A **Software-Defined Radio** dongle originally designed for digital TV that was repurposed into a wideband radio receiver.

- **Hardware:** USB dongle with an antenna, ~$30–35 USD
- **Current standard:** RTL-SDR Blog V4 (2023+)
- **Frequency range:** ~500 kHz – 1.75 GHz (nearly everything!)
- **No transmit** — receive only — *no license required*

### Why start here?
Before you transmit, *listen*. SDR lets you:
- Explore the radio spectrum visually
- Hear conversations on every mode
- Understand what HAM radio actually sounds like
- Build context before choosing your path

> Think of it as a radio telescope pointed at human communication.

---

## RTL-SDR: What Can You Receive?

| Band / Service | What You'll Hear |
|---|---|
| FM Broadcast | 87.5–108 MHz stereo music & RDS data |
| Aircraft (ADS-B) | 1090 MHz — live flight positions |
| Weather Satellites | NOAA APT images from space (137 MHz) |
| 2m HAM | Local FM repeaters, simplex chats |
| 70cm HAM | Digital voice (DMR, C4FM), repeaters |
| FRS/GMRS | Walkie-talkie conversations |
| APRS | 144.390 MHz — GPS tracking & text |
| Police/Fire | (Clear channels vary by region) |
| Trunked Radio | P25, DMR trunked systems |
| Pagers | FLEX, POCSAG — yes, still running |
| ISS | Packet, voice, SSTV events |

---

## SDR Software in 2026

### SDR++ (Recommended — Cross-Platform)
- Modern, modular, fast — *the* SDR frontend
- Windows, Linux, macOS, Raspberry Pi
- Built-in decoders for many modes
- `sdrpp.org`

### Other options:
- **SDR#** (SDRSharp) — Windows, long-standing favorite, plugin ecosystem
- **GQRX** — Linux/macOS, clean Qt interface, great for beginners
- **CubicSDR** — Cross-platform, open source

---

## SDR Software: Decoders & Add-ons

- **dump1090 / readsb** — ADS-B aircraft positions → map
- **rtl_433** — Decode 433 MHz IoT sensors, weather stations
- **WXtoImg** — Weather satellite image decoder
- **Unitrunker / Trunk-Recorder** — Trunked radio following

---

## Getting Started with RTL-SDR

### Shopping list:
1. **RTL-SDR Blog V4** kit (~$35) — includes antenna set
   - `rtl-sdr.com/buy-rtl-sdr-dvb-t-dongles/`
2. A laptop or Raspberry Pi 4/5

### First steps:
1. Plug in dongle, install SDR++
2. Open SDR++, set sample rate to 2.4 MSPS
3. Tune to **144.390 MHz** — watch APRS packets appear
4. Tune to **1090 MHz**, run dump1090 — see aircraft on a map
5. Find your local **2m FM repeater** — listen to actual HAM conversations

---

## RTL-SDR: Tips & Tricks

### Getting more from your SDR:
- Use the **waterfall display** — it shows the entire spectrum at once
- External antennas dramatically improve range
- A **direct-sampling mod** extends coverage down to HF/shortwave
- V4 has a built-in bias-T to power active antennas

> *You just became a radio listener — welcome to the hobby.*
