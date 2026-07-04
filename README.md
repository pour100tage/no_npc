# No-NPC (Total Population Disable)

This script is a radical solution to permanently remove all NPCs, traffic, parked vehicles, and emergency services from your FiveM server. It is optimized to work with **OneSync** and **OneSync Infinity**.

## 🚀 Features

*   **Traffic Removal:** Disables all driving and parked vehicles.
*   **NPC Removal:** Disables all ambient and scenario pedestrians (workers, homeless, etc.).
*   **Anti-Police / Dispatch:** Disables police patrols, ambulances, and firefighters.
*   **Brute Force:** A continuous loop scans and physically deletes entities that might force-spawn.
*   **OneSync Compatible:** Includes a server-side script to disable population via Routing Buckets.

## 🛠️ Installation

1.  Download or create a folder named `no-npc` in your `resources` directory.
2.  Place the `fxmanifest.lua`, `client.lua`, and `server.lua` files inside.
3.  Add the following line to your **`server.cfg`**:

```cfg
ensure no-npc
```

## ⚠️ Important Recommendation (OneSync)

For maximum efficiency and to prevent the server from wasting resources calculating population, add this line at the **top** of your `server.cfg`:

```cfg
set onesync_population false
```

## 📂 File Structure

*   `fxmanifest.lua`: Resource configuration.
*   `client.lua`: Local density management and force-delete loop.
*   `server.lua`: Server-side population disabling.

## 📝 License

Free to use and modify.
