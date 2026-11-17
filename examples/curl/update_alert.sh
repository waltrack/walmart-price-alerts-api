#!/usr/bin/env bash
# Change Alerts – cURL example
# Usage: WALTRACK_API_KEY=your-key bash update_alert.sh
set -euo pipefail

curl -sS --fail-with-body -X PATCH "https://www.waltrack.dev/api/v1/products/8f0b3c7e-2a4d-4e51-9c1a-6d2f1b9e7a30" \
  -H "Authorization: Bearer ${WALTRACK_API_KEY}" \
  -H "Content-Type: application/json" \
  --data '{"target_price": 65, "alert_on_drop": true}'
