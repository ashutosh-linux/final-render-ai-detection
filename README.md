# 🏗️ AI-Powered Unauthorized Construction Detection

This project uses **Mask R-CNN**, trained on satellite/aerial images, to detect unauthorized construction across zoned city regions. The app overlays zoning (red/yellow), classifies buildings, generates heatmaps, and allows public PDF reports — all in a fully interactive, real-time Streamlit web app.

---

## 🚀 Live Deployment Features

✅ Detects buildings in uploaded aerial images  
✅ Classifies them as `Authorized` or `Unauthorized` using zoning `.geojson`  
✅ Shows results with bounding boxes and labels  
✅ Generates predictive **heatmaps** of risky construction areas  
✅ Creates downloadable PDF reports with overlay maps  
✅ **Auto-downloads** trained model from Google Drive  
✅ Public Streamlit Web UI ready to deploy on Render.com

---

## 📂 Files in This Repo

| File | Purpose |
|------|---------|
| `app.py` | Main Streamlit app with real-time detection and heatmap generation |
| `model_final.pth` *(Google Drive linked)* | Trained Mask R-CNN model file |
| `red_zone_real.geojson` | GeoJSON file for red zoning (unauthorized area) |
| `yellow_zone_real.geojson` | GeoJSON file for yellow zoning (authorized area) |
| `requirements.txt` | All Python dependencies |
| `Dockerfile` | Tells Render how to build the container |
| `.render.yaml` | Tells Render how to start the app with `streamlit run app.py` |

---

## 🧠 Trained Model

This app uses your **custom trained `model_final.pth`**, downloaded at runtime using `gdown` from:

📦 [`Google Drive Link`](https://drive.google.com/file/d/1lAQfN-7JB_WoYWO0L-cq_EtWdxsWjExQ/view?usp=sharing)

You don’t need to upload this `.pth` to GitHub — it’s automatically handled inside `app.py`.

---

## 🔧 Deployment Instructions (Render)

1. Go to [Render.com](https://render.com)
2. Click **New + → Web Service**
3. Connect your GitHub → Choose this repo
4. For build:
   - Runtime: Python 3
   - Build Command: `pip install -r requirements.txt`
   - Start Command: `streamlit run app.py`
5. Click **Deploy**

---

## 💡 Tech Used

- 🧠 Mask R-CNN (Detectron2)
- 📍 Shapely + GeoPandas
- 🌍 GeoJSON overlays
- 📈 Seaborn/Matplotlib heatmaps
- 📝 PDF generation with FPDF
- 🌐 Streamlit for the UI
- ☁️ Render for free cloud deployment

---

## ✨ Bonus Suggestions

- Add a toggle to switch between **YOLO** and **Mask R-CNN**
- Admin tool to draw new zoning overlays on map
- Land-record database matching
- Real-time drone-to-dashboard stream (future)

---

## 👨‍💻 Author

Ashutosh Kumar — SR University  
🎯 Passionate about real-time AI + urban monitoring  
💥 This project was built for deployment, accuracy, and public transparency.

---

