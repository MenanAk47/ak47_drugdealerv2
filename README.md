**The ultimate corner drug dealing experience for FiveM servers.** Transform street-level narcotics roleplay with an immersive, dynamic corner selling system where NPC buyers approach dealers using realistic pathfinding. Features synchronized hand-to-hand prop animations, ambient voice lines, customer rejection mechanics, police snitch calls, and black money or marked bill payouts, all powered by `ak47_lib` multi-framework support.

---

## 🎥 Showcase

> **[Click here to watch the full feature showcase on YouTube](https://youtu.be/OHNaZ1T91VE)**

---


## 🔥 Key Features

Designed to improve roleplay immersion and economy balancing:

### 🌿 Dynamic Corner Dealing & NPC AI

* **Anywhere Corner Dealing:** Players can initiate dealing on the street using configurable commands (`/start-sell`, `/stop-sell`) and play an initial phone calling animation to arrange buyer appointments.
* **Realistic NPC Pathfinding:** Customers spawn at random offset coordinates and realistically walk directly up to the dealer using native pathfinding, facing the player upon arrival.
* **Proximity Leash Protection:** If the dealer walks more than 10 meters away from their designated dealing area, the session cancels automatically to prevent roaming exploits.

### 🎬 Immersive Interactions & Synced Animations

* **Synchronized Prop Exchange:** Seamless hand-to-hand animated transactions where the player passes a drug prop (`prop_meth_bag_01`) and the customer hands over a cash pile (`xs_prop_arena_cash_pile_s`).
* **Ambient NPC Voice Lines:** Buyers speak authentic ambient voice lines, expressing gratitude on successful trades or throwing insults when deals fall through.
* **Smooth TextUI Prompts:** Clean on-screen floating control hints powered by `ak47_lib` Text UI guide players through selling interactions.

### 🚨 Risk, Rejections & Police Dispatch

* **Configurable Rejection Rates:** Customers can randomly reject your drugs, insult your quality, and return the product without paying.
* **NPC Police Snitch Mechanism:** Disgruntled or rejecting buyers have a configurable chance to pull out their phone and report the dealer directly to law enforcement.
* **Custom Dispatch & Radius Blip:** Includes built-in fading radius police blips as well as custom dispatch event hooks (`ak47_drugdealerv2:policeAlert:custom`) for scripts like cd_dispatch, ps-dispatch, qs-dispatch, or core-dispatch.
* **Minimum Police & Job Restrictions:** Require a minimum number of on-duty cops before drug sales can start, with optional toggles to restrict on-duty police or EMS from selling.

### 💰 Economy Balancing & Inventory Support

* **Flexible Drug Catalog & Pricing:** Configure minimum and maximum sale quantities and random price ranges per individual drug type.
* **Cash, Dirty Money & Marked Bills:** Choose between standard cash, dirty money, or marked bills. Marked bills fully support item metadata worth (`usemetavalue`) or raw item count.
* **Pre-Configured Drug Items:** Comes pre-packaged with 8 items and icons (Weed, Coke, Meth, Spice, Heroin, Lean, Double Cup, and X-Pills) ready for ESX, QB, and OX inventory.

### 🛠️ Technical Excellence

* **Multi-Framework & Target Support:** Seamlessly works with ESX, QB, QBX, and various target systems (ox_target, qb-target, qtarget).
* **Highly Secure:** Built-in server-side exploit checks, including distance validation and trigger authentication, to prevent cheating.
* **Deep Inventory & Gang Integration:** Native compatibility with `ox_inventory`, `qb-inventory`, and an extensible event hook (`ak47_drugdealerv2:onsell:success`) to reward gang reputation and leveling points.

---

## 💻 Framework:

* ESX, QB, QBX

---

## ⚙️ Dependencies:

* ak47_lib: https://github.com/MenanAk47/ak47_lib/releases/latest

---

## ⚙️ How To Install:

* Download ak47_drugdealerv2 from your cfx portal.
* Add the script in your resources folder.
* Add items based on your framework instruction.
* Add item images into inventory.
* Start the script in your server.cfg below framework files.
* Make sure you have all dependencies.
* Restart the server.

---

## 🔗 Links & Support:

* **📖 Documentation:** [https://docs.menanak47.com/multi-framework/ak47_drugdealerv2](https://docs.menanak47.com/multi-framework/ak47_drugdealerv2)
* **🛒 Buy Now (Tebex):** [https://menanak47.tebex.io/package/5089375](https://menanak47.tebex.io/package/5089375)
* **💬 Discord Support:** [https://discord.gg/menanak47](https://discord.gg/menanak47)

---

## 📝 Note:
* We don't support custom framework. Make sure you are using official framework update.
* Renaming the script is not allowed. It may break the functionalities.
* Don't upload the script with FileZilla, Use Winscp if you are using FTP for file uploading