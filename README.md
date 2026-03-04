# Getting Started in HAM Radio — 2026
## A 45-Minute Marp Presentation

A modular Marp slide deck for presenting the amateur radio hobby to newcomers,
covering the full progression from passive listening through licensing and on-air activities.

---

## File Structure

```
goHAM2026/
├── slides/
│   ├── 00_title.md          — Title, overview, why ham radio in 2026
│   ├── 01_rtlsdr.md         — RTL-SDR: start listening before transmitting
│   ├── 02_unlicensed.md     — FRS, MeshCore, MURS, CB — no license needed
│   ├── 03_gmrs.md           — GMRS: $35 family license, repeater access
│   ├── 04_licensing.md      — Technician, General, Extra — exams and privileges
│   ├── 05_analog_modes.md   — FM, SSB, FT8, JS8Call, APRS, VARA, FreeDV
│   ├── 06_digital_voice.md  — DMR, D-STAR, C4FM, M-17 — comparison and guide
│   ├── 07_organizations.md  — ARDC, Zero Retries, EtherHam, Random Wire, HRCC
│   ├── 08_activities.md     — POTA, ARES, Field Day, SOTA, contesting, satellites
│   └── 09_conclusion.md     — Next steps, resources, quick reference, 73
├── combine.sh               — Script to merge sections into one file
├── CLAUDE_INTERACTIONS.md   — Session log
└── README.md                — This file
```

---

## Rendering Options

### Option 1: Use individual files (standalone)
Each `.md` file in `slides/` is a complete, standalone Marp presentation.
Open any file directly in VS Code with the Marp extension, or render with marp-cli.

### Option 2: Combine all slides (full presentation)
```bash
./combine.sh
# Outputs: combined.md

# Then render to HTML (recommended for live presentation):
npx @marp-team/marp-cli combined.md --html -o presentation.html

# Or PDF:
npx @marp-team/marp-cli combined.md -o presentation.pdf

# Or PowerPoint:
npx @marp-team/marp-cli combined.md --pptx -o presentation.pptx
```

### Option 3: Custom order / subset
```bash
# Combine only specific sections (by number prefix):
./combine.sh 00 01 04 05 06 09

# Or edit DEFAULT_ORDER in combine.sh to permanently change order
```

---

## Rendering Setup

### VS Code (recommended for editing):
1. Install the **Marp for VS Code** extension (`marp-team.marp-vscode`)
2. Open any `.md` file and click the Marp preview icon
3. See live preview as you edit

### marp-cli (for export):
```bash
# Install globally:
npm install -g @marp-team/marp-cli

# Or use via npx (no install):
npx @marp-team/marp-cli slides/00_title.md -o title.html
```

### Marp Deck.space (online):
- Upload your `.md` file to `deckspace.marp.app` for quick web hosting

---

## Customization

### Swapping sections:
Edit `DEFAULT_ORDER` in `combine.sh` to change the presentation order:
```bash
DEFAULT_ORDER=(
  "00_title"
  "01_rtlsdr"
  "03_gmrs"        # Skip unlicensed section for a licensing-focused talk
  "04_licensing"
  "05_analog_modes"
  "09_conclusion"
)
```

### Shorter presentations:
For a 20-minute intro talk, use only: `00 01 04 09`
For a licensing study session, use only: `04 05 06`
For a digital modes deep-dive: `05 06 07`

### Updating your callsign:
Replace `[Your Callsign Here]` in `00_title.md` and `[Your Callsign]` in `09_conclusion.md`
with your actual callsign.

---

## Estimated Timing

| File | Section | Est. Time |
|---|---|:-:|
| 00_title.md | Introduction & Overview | 3–4 min |
| 01_rtlsdr.md | RTL-SDR Listening | 5–6 min |
| 02_unlicensed.md | FRS & MeshCore | 5 min |
| 03_gmrs.md | GMRS | 4 min |
| 04_licensing.md | Technician/General/Extra | 7–8 min |
| 05_analog_modes.md | FM, SSB, FT8, VARA, FreeDV | 7–8 min |
| 06_digital_voice.md | DMR, D-STAR, C4FM, M-17 | 6–7 min |
| 07_organizations.md | ARDC, Zero Retries, etc. | 5 min |
| 08_activities.md | POTA, ARES, Field Day | 5 min |
| 09_conclusion.md | Next Steps & Resources | 3 min |
| **Total** | | **~50 min** |

*Adjust by removing slides or sections to fit your timeslot.*

---

73 de [Your Callsign]
