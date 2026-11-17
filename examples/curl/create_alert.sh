#!/usr/bin/env bash
# Track a Product with a Target Price – cURL example
# Usage: WALTRACK_API_KEY=your-key bash create_alert.sh
set -euo pipefail

curl -sS --fail-with-body -X POST "https://www.waltrack.dev/api/v1/products" \
  -H "Authorization: Bearer ${WALTRACK_API_KEY}" \
  -H "Content-Type: application/json" \
  --data '{"product": "17835006350", "marketplace": "com", "target_price": 70}'
