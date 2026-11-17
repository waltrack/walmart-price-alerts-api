// Track a Product with a Target Price – Node.js example (Node 18+, ES module)
// Usage: WALTRACK_API_KEY=your-key node create_alert.mjs

const headers = { Authorization: `Bearer ${process.env.WALTRACK_API_KEY}`, "Content-Type": "application/json" };

const response = await fetch("https://www.waltrack.dev/api/v1/products", {
  method: "POST",
  headers,
  body: JSON.stringify({
  "product": "17835006350",
  "marketplace": "com",
  "target_price": 70
}),
});
if (!response.ok) {
  console.error(`HTTP ${response.status}: ${await response.text()}`);
  process.exit(1);
}

console.log(JSON.stringify(await response.json(), null, 2));
