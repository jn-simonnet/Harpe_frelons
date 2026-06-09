# 🐝⚡ Harpe anti-frelons asiatiques

> Conception, fabrication maison et expérimentation en conditions réelles d'une **harpe électrique anti-frelons asiatiques** — une alternative économique et durable aux dispositifs du commerce, alimentée au solaire et optionnellement connectée (LoRaWAN).

*Documentation présentée à l'atelier **Naturapi** du 27 juin 2026.*
*© J.-N. Simonnet, 2026 — Licence : [GNU GPL v3](LICENSE).*

---

## ⚡ En bref

- **Principe** : deux plans de fils inox verticaux portés à ~2 000 V. Pas de 25 mm — inférieur à l'envergure du frelon (≈ 36–40 mm), supérieur à celle de l'abeille (16 mm) : un filtre sélectif.
- **Tout au solaire, sans batterie** : ni le frelon ni l'abeille ne volent la nuit.
- **Économique** : ~200 € en autoconstruction contre 292 € à 479 € pour un kit du commerce.
- **Durable** : pièces imprimées en 3D, isolation et vernis marin soignés pour résister à la pluie et aux UV.
- **Connectée (option)** : suivi à distance de l'activité du frelon et de l'efficacité via LoRaWAN.

---

## 📖 Par où commencer

👉 **Commencez par lire [`harpe_resume-pres_naturapi.pdf`](harpe_resume-pres_naturapi.pdf).**

Ce résumé de 3 pages présente l'ensemble du projet : principe, recommandations des GDSA, fabrication, précautions d'installation et premiers résultats. Les autres documents en détaillent chacun un aspect (mécanique, électronique, support solaire, essai de terrain, nomenclature chiffrée).

---

## 📂 Contenu du dépôt

| Ordre | Fichier | Type | Description |
|:---:|---|:---:|---|
| **1** | [`harpe_resume-pres_naturapi.pdf`](harpe_resume-pres_naturapi.pdf) | PDF | **À lire en premier.** Résumé complet du projet en 3 pages (principe, GDSA, fabrication, précautions, résultats). |
| 2 | [`harpe_resume-pres_naturapi.docx`](harpe_resume-pres_naturapi.docx) | Word | Version éditable du résumé ci-dessus. |
| 3 | [`harpe_frelons-pres_Naturapi.pptx`](harpe_frelons-pres_Naturapi.pptx) | PowerPoint | La présentation complète (≈ 45 min, 24 diapositives) dont est tiré le résumé. |
| 4 | [`Design_harpe_frelons_-_mécanique.docx`](Design_harpe_frelons_-_mécanique.docx) | Word | Guide de **construction mécanique** : matériel, plans, isolateurs 3D, montage du cadre et des fils, étape par étape. |
| 5 | [`Design_harpe_frelons_-_électronique.docx`](Design_harpe_frelons_-_électronique.docx) | Word | Guide de **l'électronique** : chaîne d'alimentation solaire → DC/DC → booster 2 kV, sécurités, mesures et option objet connecté (ESP32 / LoRaWAN). |
| 6 | [`Support_pour_panneau_solaire.docx`](Support_pour_panneau_solaire.docx) | Word | Construction du **support de panneau solaire** (orientation 45° sud/sud-ouest, plan de découpe bois, connectique PV). |
| 7 | [`Essai_harpes_frelons.docx`](Essai_harpes_frelons.docx) | Word | **Compte rendu d'expérimentation** (Beaumont, octobre 2025) : dispositions testées, tableaux de capture, enseignements et suite à donner. |
| 8 | [`BOM-Naturapi.xlsx`](BOM-Naturapi.xlsx) | Excel | **Nomenclature chiffrée** (BOM) avec fournisseurs, prix et liens, plus les plans de découpe du bois et le comparatif des panneaux solaires. |
| 🖨️ | [`isolateur-arret.scad`](isolateur-arret.scad) | OpenSCAD | **Source paramétrique** de l'isolateur imprimé en 3D (pas de 25 mm, trous de passage des fils et perçages de vis, hauteur 14 mm) — modifiable pour d'autres dimensions. |
| 🖨️ | [`isolateur-arret.stl`](isolateur-arret.stl) | STL | **Maillage prêt à imprimer** de l'isolateur (export du fichier OpenSCAD), de préférence en **PETG** pour la tenue aux UV. |

---

## 🗂️ Détail des documents

### 1–2. Résumé (PDF / Word)
Synthèse de 3 pages couvrant les cinq parties du projet, un tableau comparatif des coûts et le bilan de capture sur un mois. Le PDF est le point d'entrée ; le `.docx` permet de reprendre ou d'adapter le texte.

### 3. Présentation (PowerPoint)
Le support complet de l'atelier : le principe et le système solaire, les guides des GDSA (GDSA29, GDSA21, Abeilles95) et les coûts, la conception (isolation, améliorations), la construction mécanique et électronique, les précautions d'installation et les résultats de capture.

### 4. Conception mécanique
Nomenclature pour 3 harpes (cadre 60 × 60 cm, 11 fils par plan × 2 plans, 72 isolateurs imprimés en 3D, 48 m de fil inox 0,5 mm), choix des matériaux, et les ~14 étapes de montage (vernissage, impression des isolateurs, cadre, piétement, enfilage et mise en tension des fils, chapeau anti-pluie).

### 5. Conception électronique
Schéma d'alimentation (panneau solaire → 2 convertisseurs DC/DC → booster 2 kV + condensateur 470 nF/2 kV), sécurités (coupure rapide de la HT, protection contre les courts-circuits), et l'option objet connecté (mesure de la HT, de la tension solaire, de la température, comptage des électrocutions, transmission LoRaWAN).

### 6. Support de panneau solaire
Construction d'un support en planches de coffrage sur piquet, orienté à 45° sud/sud-ouest pour maximiser la production à l'automne (période d'activité des frelons), avec plan de découpe et connectique photovoltaïque standard.

### 7. Essai de terrain
Retour d'expérience d'octobre 2025 : contexte d'infestation, dispositions successives des harpes, tableaux de comptage (frelons, abeilles, autres insectes) par piège et par harpe, et les enseignements clés — notamment la position optimale de la harpe centrale et la limitation des captures d'abeilles.

### 8. Nomenclature (BOM)
Classeur Excel à plusieurs feuilles : nomenclature détaillée avec fournisseurs, prix et liens d'achat (≈ 242 € de matériel, panneau et support compris) ; plan de découpe des tasseaux ; comparatif de panneaux solaires (12 → 60 W) ; matériel et découpe du support de panneau.

### 🖨️ Pièce imprimée en 3D — l'isolateur
`isolateur-arret.scad` (source **OpenSCAD** paramétrique) et `isolateur-arret.stl` (maillage exporté, prêt à imprimer) définissent l'isolateur qui supporte et espace les fils inox. Juxtaposés, ces isolateurs forment les barres transversales isolantes de la harpe : pas de 25 mm entre fils, deux plans de fils espacés de 2,5 mm, et deux trous de vis pour la fixation sur les joues en bois. À imprimer de préférence en **PETG** (durabilité aux UV) ; il en faut **24 par harpe (72 pour 3 harpes)**. Le fichier `.scad` permet d'ajuster facilement le pas ou les dimensions.

---

## 🔧 Ordre de lecture conseillé

1. **`harpe_resume-pres_naturapi.pdf`** — pour comprendre le projet d'ensemble.
2. **`harpe_frelons-pres_Naturapi.pptx`** — pour une vue détaillée et illustrée.
3. **`Design_harpe_frelons_-_mécanique.docx`** puis **`...-_électronique.docx`** — pour fabriquer (imprimez au préalable les isolateurs à partir de **`isolateur-arret.stl`**).
4. **`Support_pour_panneau_solaire.docx`** — pour l'alimentation solaire.
5. **`Essai_harpes_frelons.docx`** — pour les résultats et les bonnes pratiques d'installation.
6. **`BOM-Naturapi.xlsx`** — pour s'approvisionner et chiffrer le projet.

---

## ⚠️ Avertissement — sécurité électrique

Ce dispositif fonctionne sous **haute tension (≈ 2 000 V)**. Le contact est dangereux : couper l'alimentation et attendre la décharge complète avant toute manipulation, signaler l'installation par un panneau « Danger Haute Tension », et la tenir hors de portée des enfants et des animaux.

> Il s'agit d'un **matériel non certifié et non commercialisé**. Quiconque entreprend sa construction à partir de cette documentation en assume l'entière responsabilité en cas d'accident ou de dommage lié à sa fabrication, son installation ou son utilisation (y compris d'incendie).

**Précaution apicole :** ne jamais installer une harpe près d'une ruche ou ruchette contenant un essaim récent — la reine vierge, d'envergure comparable à celle du frelon, n'a pas encore fait son vol de fécondation et risquerait d'être électrocutée.

---

## 📜 Licence & contact

**Tous les fichiers de ce dépôt** (documents, présentation, modèles 3D, nomenclature) sont publiés sous licence **GNU Affero General Public License v3.0 (AGPL v3)**.

Vous êtes libre de les utiliser, les modifier et les redistribuer — y compris à des fins commerciales — à condition de conserver cette licence et d'en créditer l'auteur ; toute œuvre dérivée doit être distribuée sous la même licence **GPL v3**. Le projet est fourni **sans aucune garantie**, dans la mesure permise par la loi.

Le texte complet de la licence doit accompagner le dépôt dans un fichier [`LICENSE`](LICENSE) — voir aussi <https://www.gnu.org/licenses/gpl-3.0.html>.

Conception et documentation : **© J.-N. Simonnet, 2026**.
