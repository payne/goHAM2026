---
marp: true
theme: default
paginate: true
backgroundColor: "#0f172a"
color: "#e2e8f0"
style: |
  section {
    font-family: 'Segoe UI', 'Liberation Sans', sans-serif;
    background-color: #0f172a;
    color: #e2e8f0;
  }
  h1 {
    color: #38bdf8;
    font-size: 2.2em;
    border-bottom: 3px solid #f4a261;
    padding-bottom: 0.2em;
  }
  h2 {
    color: #f4a261;
    font-size: 1.6em;
  }
  h3 {
    color: #7dd3fc;
  }
  strong {
    color: #f4a261;
  }
  em {
    color: #86efac;
  }
  code {
    background: #1e293b;
    color: #86efac;
    padding: 0.1em 0.4em;
    border-radius: 4px;
  }
  a {
    color: #38bdf8;
  }
  ul li, ol li {
    margin-bottom: 0.35em;
  }
  section.lead {
    text-align: center;
    justify-content: center;
  }
  section.lead h1 {
    font-size: 2.8em;
  }
  section.lead h2 {
    font-size: 1.8em;
    color: #86efac;
    border: none;
  }
  section.section-title {
    text-align: center;
    justify-content: center;
    background: linear-gradient(135deg, #0f172a 0%, #1e3a5f 100%);
  }
  section.section-title h1 {
    font-size: 2.5em;
    border-bottom: none;
  }
  table {
    border-collapse: collapse;
    width: 100%;
  }
  th {
    background: #1e3a5f;
    color: #38bdf8;
    padding: 0.4em 0.8em;
  }
  td {
    border: 1px solid #334155;
    padding: 0.4em 0.8em;
    background: #0f172a;
    color: #e2e8f0;
  }
  tr:nth-child(even) td {
    background: #1e293b;
  }
  footer {
    color: #64748b;
    font-size: 0.75em;
  }
  header {
    color: #38bdf8;
    font-size: 0.8em;
  }
header: "Getting Started in HAM Radio — 2026"
---

<!-- _class: lead -->

# Getting Started in
# HAM Radio in 2026

### From Listening to Licensing and Beyond

**[Your Callsign Here]** | March 2026

`github.com/payne/goHAM2026`

---

<!-- _class: section-title -->

## What We'll Cover Today

---

## Roadmap

1. **Start Listening** — RTL-SDR software-defined radio
2. **No License Needed** — FRS, MeshCore mesh networking
3. **Easy Entry** — GMRS (one license, whole family)
4. **Go HAM** — Technician → General → Extra
5. **Modes** — FM, SSB, FT8, VARA, FreeDV
6. **Digital Voice** — DMR, D-STAR, C4FM, M-17
7. **Community** — ARDC, Zero Retries, EtherHam, and more
8. **Get Active** — POTA, ARES, Field Day

> There has never been a better time to get into amateur radio.
> The tools are cheaper, the community is larger, and the
> technology is *more exciting than ever.*

---

## Why HAM Radio in 2026?

- **Infrastructure independence** — communicate when everything else fails
- **Digital renaissance** — FT8, DMR, M-17, mesh networking
- **Community** — global operators, local clubs, online groups
- **STEM on-ramp** — electronics, RF, antennas, software, emergency comms
- **It's genuinely fun** — portable ops, contesting, satellites, moonbounce

| What you can do | Without license | GMRS | Technician+ |
|-----------------|:-:|:-:|:-:|
| Listen to everything | ✓ | ✓ | ✓ |
| FRS walkie-talkies | ✓ | ✓ | ✓ |
| GMRS repeaters | | ✓ | ✓ |
| 2m/70cm FM + repeaters | | | ✓ |
| HF global contacts | | | General+ |
| Full privileges | | | Extra |

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

### Decoders & add-ons:
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

---


<!-- _class: section-title -->

# GMRS
## General Mobile Radio Service
### The Family License

---

## What is GMRS?

**GMRS is a licensed radio service that covers your whole family for $35.**

### The deal:
- **$35 FCC license fee** — valid for **10 years**
- Covers your **immediate family** (spouse, children, parents, siblings)
- No exam required — just pay the fee at the FCC ULS
- Use **up to 50W** output power (handhelds are typically 5W)
- **Repeater access** — dramatically extends range

### GMRS Channels:
| Type | Channels | Power |
|---|---|---|
| FRS/GMRS shared | 1–7, 15–22 | Up to 50W GMRS |
| GMRS simplex | 15–22 | Up to 50W |
| **GMRS repeater pairs** | **15R–22R** | Up to 50W |
| Shared FRS only | 8–14 | 0.5W max |

---

## GMRS: Why It Matters

### Range:
- **Handhelds (5W):** 3–10 km, much more with elevation
- **Mobile/base (50W):** 30+ km line of sight
- **Through a repeater:** 80–160 km radius is common

### GMRS Repeaters:
- Run by clubs and individuals, often free to use
- `mygmrs.com` — national repeater directory
- Some repeaters linked over internet (IRLP/AllStar/Zello-based)
- Growing infrastructure in 2026

### The GMRS community is growing:
- Many preppers, off-road/overlanding groups, RV communities
- Neighborhood emergency communication groups
- Affordable hardware: Midland MXT, BTech GMRS-50X1, Radioddity GM30

> GMRS is the **best-kept secret** in radio for families and community groups

---

## GMRS → HAM: The Bridge

GMRS gives you practical radio experience before taking the HAM exam.

### Skills that transfer:
- Understanding repeaters (inputs, outputs, CTCSS tones)
- Radio operating procedures and etiquette
- Antenna and coax fundamentals
- Emergency communications mentality

### Key differences — GMRS vs. HAM Technician:

| Feature | GMRS | HAM Technician |
|---|---|---|
| License | Pay $35, no exam | Pass written exam |
| Exam required | No | Yes (35 questions) |
| Family coverage | Yes | No (individual only) |
| Repeater access | GMRS repeaters | HAM repeaters |
| Power (handheld) | Up to 50W | Varies by band |
| HF privileges | None | Some (10m, 6m) |
| Digital modes | Limited | Full access |
| Global linking | Limited | Full (EchoLink, etc.) |

> Many operators hold **both** GMRS and HAM licenses — they complement each other

---


<!-- _class: section-title -->

# Amateur Radio Licensing
## Technician → General → Extra

---

## The Three License Levels

**All three require written exams. No Morse code required (since 2007).**

### License overview:

| License | Questions | Pool Size | Need Correct | Focus |
|---|:-:|:-:|:-:|---|
| **Technician** | 35 | 423 | 26 (74%) | VHF/UHF, basics |
| **General** | 35 | 454 | 26 (74%) | HF privileges |
| **Extra** | 50 | 622 | 37 (74%) | Full privileges |

### The progression:
```
No license → Technician → General → Extra
```
- You must hold each license to upgrade to the next
- Many operators stay at Technician or General for years
- There's no rush — **start where you are**

> License pools are updated every 4 years. Study from current materials!

---

## Technician License

**The entry point to amateur radio.**

### What you get:
- All amateur privileges **above 30 MHz** (VHF/UHF and higher)
- **2 meters (144–148 MHz):** FM simplex, repeaters, APRS, satellite
- **70 cm (420–450 MHz):** FM, digital voice (DMR, C4FM, D-STAR), repeaters
- **6 meters (50–54 MHz):** "Magic band," occasional long-distance contacts
- **Limited HF:** 10 meters (28 MHz) — some phone/data/CW privileges
- **Other bands:** 1.25m, 33cm, 23cm, and microwave allocations

---

## Technician Exam: What You'll Study

**35 questions from a pool of 423 — need 26 correct (74%) to pass**

| Element | Topic |
|---|---|
| **T1** | FCC rules and regulations |
| **T2** | Operating procedures |
| **T3** | Radio wave propagation |
| **T4** | Amateur radio practices |
| **T5** | Electrical principles |
| **T6** | Circuit components |
| **T7** | Station equipment |
| **T8** | Modulation modes and digital |
| **T9** | Antennas and feedlines |
| **T0** | RF safety and electrical safety |

---

## General License

**Unlocks the HF shortwave bands — global communication.**

### New privileges over Technician:
- **80 meters (3.5–4 MHz):** Nighttime DX, regional nets
- **40 meters (7 MHz):** Most popular HF band, day and night
- **15 meters (21 MHz):** Excellent when solar cycle is active
- **10 meters (28 MHz):** Full phone privileges (vs. limited Tech)
- **17m, 12m:** Excellent DX bands
- *Partial access to 160m, 60m, 30m, 20m*

### Why upgrade?
- **20 meters (14 MHz)** is the most active global HF band
- Talk to every continent with modest equipment
- Join HF nets, participate in DX contests
- Winlink email over HF for emergency use

### Study tips:
- 35 questions from pool of 454
- Emphasizes HF operating, propagation, and more complex electronics
- HamStudy.org has excellent spaced repetition flash cards

---

## Extra License

**Full amateur privileges — the complete picture.**

### New privileges over General:
- **Extra-class sub-bands** on all HF bands (less crowded!)
- Access to all amateur frequencies including experimental
- CW/phone sub-bands on 160m, 80m, 40m, 20m, 15m, 10m

### What makes it special:
- Required to become a **Volunteer Examiner** (administer tests)
- Respected in the community — shows deep commitment
- The "extra" sub-bands are noticeably quieter during contests

### The challenge:
- 50 questions from a pool of 622
- Covers advanced electronics, RF theory, antenna design
- Digital signal processing, operating procedures, regulations
- Takes most people several months of serious study

> "The Extra exam is not a test of intelligence —
> it's a test of *dedication.*" — common saying in the community

---

## How to Study for Your License

### Study resources:
- **HamStudy.org** — free, adaptive spaced repetition, highly recommended
- **ARRL Ham Radio License Manual** — official study guide
- **HamTestOnline.com** — paid but very thorough
- **YouTube:** Ham Radio Crash Course, David Casler (KE0OG) study videos

### Study strategy:
- 20–30 minutes/day on HamStudy flashcards
- Take full practice exams once you know most material
- Aim to score **80%+ consistently** before scheduling your test

---

## Taking the Exam

### Steps:
1. Find a **Volunteer Examiner session** near you
   - `arrl.org/find-an-amateur-radio-license-exam-session`
   - **Remote/online testing** via HamStudy ARRL VEC or W5YI
2. Bring a photo ID and $15–20 exam fee (varies by VEC)
3. Pass 26/35 questions (74%)
4. Callsign appears in FCC ULS within **1–10 business days**
5. You can operate as soon as your callsign is in the database!

### Pro tips:
- Many clubs offer free **Elmer** (mentoring) programs
- Consider testing for **all three licenses in one sitting** —
  the fee is often the same, and you can test up immediately after each pass

---

## Your Callsign

**Your callsign is your radio identity — for life if you want it.**

### How callsigns are assigned in the US:
- **1x2 format:** `W1XY` — Extra class (sequential or vanity)
- **2x1 format:** `KD9Y` — older or vanity
- **2x2 format:** `KD9YZ` — General or Technician, most new licenses
- **2x3 format:** `KD9ABC` — newer assignments

### Vanity callsigns:
- Apply after licensing for a specific callsign via FCC ULS
- Free to apply, small wait period
- Can request 1x2, 2x1 (if Extra) or any available combination
- Many operators pick meaningful callsigns

### Callsign formats by country:
- US: `W`, `K`, `N`, `A` prefix groups
- Canada: `VE`, `VA`
- UK: `G`, `M`
- International: `ITU` country prefix + suffix

> Once you have a callsign, the world opens up — literally.

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

---

## FT8: Why It Changed Everything

### Why it's revolutionary:
- QRP (5W) contacts to Europe from a wire antenna in a small yard
- Opens up HF for people with HOA antenna restrictions
- Proves a contact is possible when voice conditions are too poor
- Massive uptake: FT8 is now **the most popular HF data mode**

### The controversy:
> "It's not *real* radio — a computer does everything!"
> vs.
> "It's the most efficient use of spectrum ever devised."

Both sides have a point. FT8 is a tool — use it to *get on HF*, then explore.

---

## JS8Call & APRS

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

---

## More Digital Data Modes

### Other keyboard & data modes:
- **PSK31** — classic keyboard-to-keyboard mode, very narrow bandwidth
- **RTTY** — radioteletype, still used in contesting
- **Olivia** — extremely robust keyboard chat in poor conditions
- **WSPR** — Weak Signal Propagation Reporter, beacon mode for testing

### Choosing a mode:
| Goal | Use |
|---|---|
| Just get on HF fast | FT8 |
| Chat with a person | JS8Call or PSK31 |
| Track positions/weather | APRS |
| Map propagation | WSPR |
| Emergency email | VARA / Winlink |

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

### Hardware:
- **TYT MD-380/390** — ~$65, the original popular DMR HT
- **Radioddity GD-73** — compact, excellent value
- **Anytone AT-D878UV** — feature-packed, popular upgrade
- **Hotspot** — MMDVM or Pi-Star/BlueDV connecting you to BrandMeister via home Wi-Fi

### Getting started:
1. Buy a DMR radio
2. Register on `radioid.net` for your **DMR ID** (free)
3. Program repeaters or set up a hotspot
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
- `dstarinfo.com`, `dstarusers.org` — repeater directories and news
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
- Easy adoption: many C4FM repeaters operate in **auto mode**, accepting both analog FM and digital C4FM callers

### WIRES-X Network:
- Yaesu's internet-linking platform
- **Rooms and Nodes** — similar to Echolink but C4FM native
- Thousands of rooms worldwide, many active communities

### Why operators like C4FM:
- Seamless analog/digital coexistence on same repeater
- Good audio quality
- WIRES-X rooms are easy to navigate from the radio itself
- Yaesu makes excellent radios: FT-70D (~$180), FT3DR, FTM-500D

### C4FM in 2026:
- Very active in North America, Japan, Europe
- Compatible with **YSF (Yaesu System Fusion)** reflectors
- Accessible through Pi-Star/BlueDV hotspots

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

### M-17 in 2026:
- Growing repeater network and reflectors (`m17project.org`)
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

### The practical advice:
- **Start with DMR** — cheapest hardware, biggest network
- **Add C4FM** if your local repeaters are Fusion
- **Explore M-17** — be part of building the future of open digital voice

---


<!-- _class: section-title -->

# The Innovative Community
## Organizations Pushing Amateur Radio Forward

---

## ARDC — Amateur Radio Digital Communications

**The most important funding organization in amateur radio.**

### Background:
- Founded to steward `44.0.0.0/8` — the **AMPRNet** IP block
  - A /8 (16.7 million addresses) allocated to amateur radio in the 1980s
  - **Sold a portion for $132 million** in 2021 — funds the foundation
- Nonprofit — mission: support amateur radio and digital communications

### What ARDC funds:
- Open source projects: **OpenWebRX, Codec2, WSJT-X** development
- Infrastructure: repeaters, mesh networks, SDR receivers
- **Education:** scholarships, school programs
- **Research:** RF propagation, digital communications, emergency comms
- Grants to clubs and individuals — `ardc.net/grants`

### Why this matters to you:
- ARDC is actively funding the *next generation* of amateur radio tools
- Many of the software tools you use are ARDC-supported
- Grant applications are open — have an idea? Apply!

> ARDC is why amateur radio can afford to innovate in 2026.

---

## Zero Retries Newsletter

**The newsletter connecting the innovators of amateur radio.**

### What is Zero Retries?
- Weekly newsletter by **Steve Stroh N8GNJ** (previously **Michael KI7MT**)
- Focus on **amateur radio innovation** — not just traditional contesting/DX
- Covers: digital modes, software, mesh networking, new organizations
- Free to subscribe at `zereoretries.info`

### What you'll find in Zero Retries:
- Project announcements and updates
- Interviews with builders and innovators
- Links to open source projects
- Governance and regulatory issues
- The "new guard" of amateur radio thought

### Why subscribe:
- Cuts through the noise — highly curated signal
- Covers projects months before they hit mainstream
- Connects you to forward-thinking community members
- Archive of past issues is a goldmine of project ideas

> If you read one amateur radio newsletter, make it Zero Retries.
> It's the best 10 minutes of amateur radio content each week.

---

## EtherHam

**Where amateur radio meets networking and technology.**

### What is EtherHam?
- Community focused on **networking, Linux, and amateur radio**
- Discussion forum, Discord server, collaborative projects
- Appeals to the **tech/IT/sysadmin crossover** ham operator demographic
- Strong interest in: mesh networking, Winlink, digital infrastructure

### EtherHam interests:
- **AREDN** (Amateur Radio Emergency Data Network) mesh
- Wireguard/VPN over amateur radio
- **OpenWRT on radio hardware**
- Amateur radio with Raspberry Pi, SDR platforms
- Software-defined radio for infrastructure monitoring

### Finding EtherHam:
- Discord server: active technical discussions
- Topics bridge the gap between professional networking and amateur radio
- Great place to ask "how do I run this over radio" questions

> If you're a network engineer or Linux sysadmin who's just getting into radio,
> EtherHam is *your* community.

---

## Random Wire

**High-quality audio content for the thinking ham operator.**

### What is Random Wire?
- **Podcast and community** focused on amateur radio culture and technology
- Long-form conversations with interesting operators and builders
- Not afraid to tackle **controversial topics** in amateur radio
- Well-produced, thoughtful, worth your commute time

### Topics covered:
- Digital voice adoption and the AMBE codec debate
- Open source vs. proprietary radio systems
- Emergency communications philosophy
- Interviews with ARDC, club leaders, innovators
- The state of amateur radio governance and the FCC

### Finding Random Wire:
- Available on all major podcast platforms
- Active community on Discord and social media

> Random Wire asks the questions other amateur radio media won't.
> Essential listening for anyone who thinks critically about the hobby.

---

## Ham Radio Crash Course

**The gateway drug for the YouTube generation.**

### What is HRCC?
- YouTube channel run by **Josh (KE8TWS)** — `youtube.com/@HamRadioCrashCourse`
- Extremely **beginner-friendly**, well-produced content
- Covers: licensing, equipment reviews, digital modes, field ops
- Consistently one of the **highest-quality** HAM YouTube channels

### Popular content:
- "How to Get Your Ham Radio License" — the gateway video
- Equipment reviews: HF radios, handhelds, SDRs
- **POTA activations** — watching Josh operate portable is addictive
- Antenna builds and installation guides

### Why it works:
- Approaches every topic as if explaining to his past self
- High production value — watchable even for non-hams

---

## More Ham Radio on YouTube

### Essential channels for new operators:

| Channel | Best for |
|---|---|
| **Ham Radio Crash Course** | General beginner content, POTA |
| **David Casler KE0OG** | Structured licensing study |
| **W2AEW** | Electronics theory, oscilloscope skills |
| **TechMinds** | SDR, software, tech crossover |
| **DX Commander (Callum)** | Antenna builds and DX operating |

> Between HamStudy flashcards and YouTube, you can learn everything
> you need to get licensed without leaving your couch.

---

## The Broader Community

### The ARRL (American Radio Relay League):
- Largest amateur radio organization in the US
- Publishes **QST** magazine, the ARRL Handbook
- Administers VE (Volunteer Examiner) testing
- Lobbies FCC on behalf of amateur radio
- `arrl.org` — find local clubs, events, resources

### Local clubs:
- Every region has multiple clubs — find yours at `arrl.org/find-a-club`
- Club activities: **nets, meetings, Field Day, licensing classes, elmers**
- Many clubs have loaner equipment for new members

### Online communities:
- **r/amateurradio** — large, active subreddit
- **QRZ.com** — callsign lookup, forums, logbook
- **eHam.net** — equipment reviews, forums
- **Ham Radio Discord servers** — many active servers by topic

> The amateur radio community is **genuinely welcoming** to new operators.
> Don't be afraid to get on the air and say hello.

---


<!-- _class: section-title -->

# Get On The Air
## POTA · ARES · Field Day · and More

---

## POTA — Parks on the Air

**The fastest-growing activity in amateur radio.**

### What is POTA?
- Activate **national parks, forests, recreation areas** with a portable radio station
- A structured **award program** with an active logging community
- **Activators** (field operators) earn awards; **Hunters** (home operators) log contacts
- Over **50,000 parks** across **80+ countries** in the program

### Why POTA is amazing:
- Forces you to **operate portable** — builds real skills
- Gets you outside in beautiful places with a purpose
- Deeply social — huge community at `parksontheair.com`
- **Any license class can participate** — Technicians operate 2m POTA!
- Award certificates for activations and hunter contacts

### What a POTA activation looks like:
1. Choose a qualifying park (`parksontheair.com/reference`)
2. Set up portable radio + antenna (often a wire in a tree)
3. Make **10 contacts minimum** to count as an activation
4. Upload log to POTA website within 24 hours
5. Repeat — some operators activate 100s of parks per year

> POTA turned "going to the park" into a global radio adventure.

---

## POTA: Getting Started

### Minimum gear for a POTA activation:

**VHF/UHF (Technician):**
- Handheld radio (Yaesu FT-65, etc.)
- Extra batteries or portable power bank
- Find a local 2m repeater in the park coverage area
- Make 10 contacts on the repeater — done!

**HF (General+):**
- Portable HF radio: **Xiegu X6100** ($500), **Icom IC-705** ($1,300), **uSDX** ($60 kit!)
- Wire antenna: end-fed half-wave (EFHW) is popular, 66 ft of wire + 9:1 unun
- Fishing pole or tree branch as antenna support
- **20m is the POTA band** — most activity, best for new activators

### The POTA culture:
- **No logging while driving** — always set up safely
- **Spot yourself** on `pota.app` so hunters know you're active
- The community is *extremely* welcoming to new activators
- Many clubs organize **group activations** — great for beginners

---

## ARES — Amateur Radio Emergency Service

**When it matters most, ARES is there.**

### What is ARES?
- **ARRL-affiliated** volunteer emergency communications organization
- Coordinates amateur radio support during **disasters and emergencies**
- Works with: FEMA, Red Cross, local emergency management, hospitals
- Organized at county and state level — find your local group at `arrl.org/ares`

### What ARES operators do:
- **Staffing EOCs** (Emergency Operations Centers) during disasters
- **Health and welfare traffic** — connecting families during evacuations
- **Backup communications** when cell/internet infrastructure fails
- **Shelter registration** — radio links between shelters
- **Spotting for NWS** — severe weather reporting (SKYWARN)

---

## ARES: Training & Technology

### Training required:
- **ICS 100 and 700** — free FEMA online courses (required by most groups)
- **ARRL EC-001** — Introduction to Emergency Communications
- Regular **training nets** and tabletop exercises
- Annual **Simulated Emergency Test (SET)**

### Technology ARES uses:
- FM voice on 2m/70cm — the reliable backbone
- **Winlink/VARA** — radio email for formal message traffic
- **APRS** — situational awareness and resource tracking
- **MESH/AREDN** — IP networking over radio for large incidents

---

## Field Day

**The Super Bowl of Amateur Radio.**

### What is Field Day?
- Annual event held the **last full weekend of June**
- Organized by ARRL — over **40,000 operators** participate nationwide
- Clubs set up portable stations **without normal power infrastructure**
- Make as many contacts as possible in **24 hours**
- Part contest, part training exercise, part social event

### How Field Day works:
- **Classes:** 1A (1 transmitter, remote), 2A (2 TX), Club class, etc.
- **Categories:** HF, VHF, satellite, digital
- Bonus points for: emergency power, public info, media coverage, satellite contacts
- Score submitted to ARRL — results published in QST magazine

### Why attend Field Day as a new operator:
- **No experience needed** — show up and operators will guide you
- Every club needs **operators, helpers, and public visitors**
- Try radios and modes you've never used in a low-pressure setting
- Make your **first HF contact** with help from experienced operators
- Free event — clubs welcome anyone interested in radio

> Field Day is where many lifelong hams made their first-ever radio contact.
> Find a club and show up — you won't regret it.

---

## More Activities: Contesting & SOTA

### Contesting:
- **CQ WW, ARRL DX, 7QP** — hundreds of contests per year
- Competitive contact-making across bands and modes
- `contestcalendar.com` — full schedule
- Even one hour in a contest teaches more than a month of casual operating

### SOTA — Summits on the Air:
- Similar to POTA but specifically for **mountain summits**
- Must operate within 25 vertical meters of the summit
- Serious portable operating — often QRP with tiny antennas
- Global program: `sota.org.uk`

---

## More Activities: Satellites & Weak Signal

### Satellite Operation:
- Amateur satellites in orbit: **SO-50, AO-91, AO-92, ISS**
- Technician can work satellites with a dual-band handheld + yagi
- ISS occasionally schedules **SSTV events** — receive space images
- `amsat.org` — satellite tracking, schedules, and getting started

### Digital Weak Signal (WSJT-X Modes):
- **EME (Earth-Moon-Earth)** — bounce signals off the moon
- **Meteor Scatter** — use meteor trails as radio reflectors
- **Troposcatter** — ducting contacts 1000+ km on VHF/UHF

> VHF/UHF contesting, Hamvention, public service events...
> There is *always* something to do in amateur radio. Always.

---


<!-- _class: section-title -->

# Your Path Forward
## From Today to On The Air

---

## The Starter Playbook

**Concrete steps you can take this week:**

### Week 1 — Start listening:
- [ ] Order an **RTL-SDR Blog V4** kit (~$35) from `rtl-sdr.com`
- [ ] Download **SDR++** and install it
- [ ] Tune to 144.390 MHz and watch APRS packets scroll by
- [ ] Find a local 2m repeater and listen to actual conversations

### Week 2 — Get unlicensed on the air:
- [ ] Buy a set of **FRS radios** or order a **LoRa board** for MeshCore/Meshtastic
- [ ] Try MeshCore with a friend — experience real off-grid comms
- [ ] Consider whether **GMRS** fits your household needs ($35, no exam)

### Week 3–4 — Study for your Technician:
- [ ] Create a free account at **HamStudy.org**
- [ ] 15–30 minutes per day of flashcard practice
- [ ] Schedule your exam when you're consistently passing at 80%+

---

## After You're Licensed

### First month on the air:
- [ ] Find a local club — attend a meeting
- [ ] Get on 2m FM — make your first repeater contact
- [ ] Go to a **Field Day** — even just as an observer
- [ ] Explore POTA — Technicians can activate on 2m FM

### Keep progressing:
- [ ] Study for **General** — unlock HF and global contacts
- [ ] Set up a **Winlink** station for emergency preparedness
- [ ] Try a **DMR hotspot** — talk to the world from your desk
- [ ] Attend **Hamvention** or a regional hamfest

> The hardest part is making that first contact.
> After that, you'll never want to stop.

---

## Resource Summary

### Get Licensed:
- **HamStudy.org** — study, practice exams, find a VE session
- **Ham Radio Crash Course** — `youtube.com/@HamRadioCrashCourse`
- **David Casler KE0OG** — licensing study playlists on YouTube

### Hardware:
- **RTL-SDR Blog V4** — `rtl-sdr.com`
- **Heltec V3 LoRa** — MeshCore/Meshtastic starter
- **Yaesu FT-65 or FT-70D** — first HAM handheld
- **Xiegu G90 or X6100** — budget HF entry point

### Community:
- **ARRL** — `arrl.org` — find clubs, exams, resources
- **QRZ.com** — callsign lookup, forums
- **r/amateurradio** — active subreddit
- **Zero Retries** — `zeroretries.info` — innovation newsletter

### Digital Infrastructure:
- **Brandmeister** — `brandmeister.network` — DMR
- **Winlink** — `winlink.org` — radio email
- **POTA** — `parksontheair.com`
- **APRS** — `aprs.fi`

---

<!-- _class: lead -->

# 73

## Good luck and good DX!

---

**Presented by:** [Your Callsign]
**Contact:** [Your email or social]
**Slides:** Available at [URL]

### Key takeaway:
*Amateur radio in 2026 is more accessible, more technical, and more relevant than it has ever been. The barrier to entry has never been lower. The community has never been more welcoming. The technology has never been more exciting.*

**The only question is: when do you start?**

---

## Appendix: Quick Reference

### US Amateur Band Plan (Simplified):

| Band | Freq (MHz) | Technician | General+ | Primary Mode |
|---|---|:-:|:-:|---|
| 10m | 28.000–29.700 | Limited | Full | SSB, FT8, FM |
| 6m | 50–54 | Full | Full | FM, SSB, FT8 |
| 2m | 144–148 | Full | Full | FM, SSB, APRS |
| 1.25m | 222–225 | Full | Full | FM |
| 70cm | 420–450 | Full | Full | FM, DMR, D-STAR |
| 40m | 7.000–7.300 | — | Full | SSB, CW, FT8 |
| 20m | 14.000–14.350 | — | Full | SSB, CW, FT8 |
| 80m | 3.500–4.000 | — | Full | SSB, CW |

### Common frequencies:
- **APRS:** 144.390 MHz (NA)
- **FT8 20m:** 14.074 MHz
- **FT8 40m:** 7.074 MHz
- **Calling (2m FM):** 146.520 MHz (simplex)
- **Calling (70cm FM):** 446.000 MHz (simplex)
- **FreeDV HF:** 14.236 MHz USB
