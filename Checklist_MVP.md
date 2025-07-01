# ✅ CapeOnboard MVP Checklist

## 📌 1. Project Setup
- [x] Create GitHub repository `capeonboard`
- [x] Add `.devcontainer` configuration for Codespaces
- [x] Add `Dockerfile` for local/containerized dev
- [x] Add `Procfile` for Heroku
- [x] Add `heroku.yml` for container deployment
- [ ] Define the project stack in `README.md` (FastAPI, PostgreSQL, React, etc.)

## 🧭 2. Onboarding Flow - Architecture
- [ ] Design flow diagram for **Customer** and **Developer** onboarding
- [ ] Define user states: guest, new, returning, dev, admin
- [ ] Set up routing structure for: `/welcome`, `/profile`, `/checklist`, `/docs`, `/dev`
- [ ] Plan AI assistant (CapeAI) behavior and integration points

## 🧑‍💻 3. Developer Portal
- [ ] Add GitHub login or token-based access for devs
- [ ] Set up `/docs` with Swagger (FastAPI autogen or Redoc)
- [ ] Create sample “Hello World” API call + JWT token guide
- [ ] Create basic CLI or `curl` walkthrough (in Markdown or `/docs`)

## 🧑‍💼 4. Customer Onboarding
- [ ] `/welcome` screen with friendly CapeAI intro
- [ ] Role selector: “I’m a creator”, “I want to learn”, etc.
- [ ] Profile setup form with progress bar
- [ ] Smart checklist generator (based on role selection)
- [ ] Save progress to PostgreSQL (via FastAPI)

## 🧠 5. CapeAI Assistant
- [ ] Create placeholder UI element for persistent CapeAI
- [ ] Basic backend route for AI query relay (e.g. OpenAI API)
- [ ] Add session-awareness / memory (basic in-memory or Redis)
- [ ] Enable contextual guidance based on onboarding step

## 📊 6. Tracking & Feedback
- [ ] Integrate PostHog or LogRocket
- [ ] Capture onboarding step analytics
- [ ] Add feedback thumbs-up/down + text box to each step

## 🚀 7. Deployment & Testing
- [ ] Test local dev with `docker-compose`
- [ ] Deploy to Heroku via `heroku.yml` and test onboarding flow
- [ ] Enable HTTPS and custom domain config (optional)
- [ ] Invite 3 test users (customer + developer) for feedback

## 📚 8. Documentation & ReadMe
- [ ] Add contributor guide
- [ ] Add quickstart section (Docker + Codespace)
- [ ] Explain onboarding logic + architecture in docs
- [ ] Add roadmap and contribution rules