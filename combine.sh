#!/usr/bin/env bash
# combine.sh — Merges all slide files into one Marp presentation
#
# Usage:
#   ./combine.sh                    # Combines all slides in default order → combined.md
#   ./combine.sh output.md          # Write to custom output file
#   ./combine.sh 00 01 03 04        # Combine specific sections by prefix number
#
# To render with marp-cli:
#   npx @marp-team/marp-cli combined.md --html -o presentation.html
#   npx @marp-team/marp-cli combined.md -o presentation.pdf
#   npx @marp-team/marp-cli combined.md --pptx -o presentation.pptx

SLIDES_DIR="$(dirname "$0")/slides"
OUTPUT="${1:-combined.md}"

# Default slide order — edit this array to change order or exclude sections
DEFAULT_ORDER=(
  "00_title"
  "01_rtlsdr"
  "02_unlicensed"
  "03_gmrs"
  "04_licensing"
  "05_analog_modes"
  "06_digital_voice"
  "07_organizations"
  "08_activities"
  "09_conclusion"
)

# If arguments look like section numbers (e.g., "00 01 03"), use custom order
if [[ $# -gt 0 && "$1" =~ ^[0-9] ]]; then
  CUSTOM_ORDER=("$@")
  OUTPUT="combined.md"
  SECTIONS=()
  for num in "${CUSTOM_ORDER[@]}"; do
    match=$(find "$SLIDES_DIR" -name "${num}_*.md" 2>/dev/null | head -1)
    if [[ -n "$match" ]]; then
      SECTIONS+=("$match")
    else
      echo "WARNING: No slide file found matching prefix '${num}'" >&2
    fi
  done
else
  SECTIONS=()
  for name in "${DEFAULT_ORDER[@]}"; do
    match=$(find "$SLIDES_DIR" -name "${name}.md" 2>/dev/null | head -1)
    if [[ -n "$match" ]]; then
      SECTIONS+=("$match")
    else
      echo "WARNING: Slide file '${name}.md' not found in $SLIDES_DIR" >&2
    fi
  done
fi

if [[ ${#SECTIONS[@]} -eq 0 ]]; then
  echo "ERROR: No slide files found." >&2
  exit 1
fi

echo "Combining ${#SECTIONS[@]} slide files → $OUTPUT"

# Write the first file in full (includes Marp frontmatter)
first=true
> "$OUTPUT"

for file in "${SECTIONS[@]}"; do
  if $first; then
    cat "$file" >> "$OUTPUT"
    first=false
  else
    # Strip the YAML frontmatter (everything between first and second ---)
    # Then prepend a slide separator
    echo "" >> "$OUTPUT"
    echo "---" >> "$OUTPUT"
    echo "" >> "$OUTPUT"
    # Use awk to skip lines from start until we've seen two "---" lines
    awk '
      /^---$/ && count < 2 { count++; next }
      count >= 2 { print }
    ' "$file" >> "$OUTPUT"
  fi
done

echo "Done. Output: $OUTPUT"
echo ""
echo "To render:"
echo "  npx @marp-team/marp-cli $OUTPUT --html -o presentation.html"
echo "  npx @marp-team/marp-cli $OUTPUT -o presentation.pdf"
echo "  npx @marp-team/marp-cli $OUTPUT --pptx -o presentation.pptx"
