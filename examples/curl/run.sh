#!/usr/bin/env bash
# Call publicrecords/google-ads-transparency-scraper on YOUR Apify account. Set APIFY_TOKEN. Do not commit the token.
set -euo pipefail
: "${APIFY_TOKEN:?Set APIFY_TOKEN to your own Apify token}"
curl -sS -X POST \
  "https://api.apify.com/v2/acts/publicrecords~google-ads-transparency-scraper/run-sync-get-dataset-items?token=${APIFY_TOKEN}" \
  -H "Content-Type: application/json" \
  -d '{"targets": ["nike.com"], "sinceDays": 7, "region": "US", "maxAdsPerTarget": 25}'
