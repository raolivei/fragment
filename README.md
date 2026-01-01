# Fragment

**Identity Fragments Archive** — A calm, premium, introspective application for observing and understanding different identity fragments (contexts or modes of self) over time.

![Version](https://img.shields.io/badge/version-0.1.0-blue)
![License](https://img.shields.io/badge/license-MIT-green)

## Overview

Fragment is a **self-reflection and personal organization tool** that helps users observe and understand different *identity fragments* (contexts or modes of being) over time.

Fragment **never tells users what to do**. It provides observability of self, not improvement of self.

### Core Concept

An **Identity Fragment** is a user-defined mode of being, for example:

- "Me as an engineer"
- "Me as a partner"
- "Me when I travel"
- "Me when I'm under pressure"

Fragments are descriptive, contextual, allowed to overlap or contradict, and owned entirely by the user. There is **no correct taxonomy**.

### What Fragment Is NOT

- ❌ Therapy
- ❌ Coaching
- ❌ Counseling
- ❌ Diagnosis
- ❌ Mental health assessment
- ❌ Personality typing
- ❌ Habit tracking
- ❌ Productivity optimization

## Key Features

- 🧘 **Calm, Non-Directive Interface** — Quiet mirror, not a dashboard
- 🧬 **Identity Fragments** — User-defined modes of being
- 🌌 **Orbit View** — Visual representation of fragment relationships
- 🔒 **Local-First** — SQLite database, privacy-forward, offline by default
- 🧠 **Constrained AI** — Pattern surfacing without advice or interpretation
- 🐢 **Slow Usage** — Weekly interactions, no streaks, no engagement pressure

## Tech Stack

- **Frontend**: React + TypeScript + Vite
- **Visualization**: Canvas/SVG for Orbit view
- **Database**: SQLite (local-first via sql.js)
- **State Management**: Zustand
- **AI**: Stateless, constrained prompts (OpenAI/Anthropic via proxy)
- **Deployment**: PWA (future: React Native, Tauri desktop)

## Quick Start

### Prerequisites

- Node.js 20+
- npm or yarn

### Development Setup

```bash
# Clone repository
git clone https://github.com/raolivei/fragment.git
cd fragment

# Install dependencies
cd frontend
npm install

# Start development server
npm run dev
```

## Architecture

```
┌─────────────┐
│   React +   │
│  TypeScript │
│  + Vite     │
│  Frontend   │
└──────┬──────┘
       │
       ▼
┌─────────────┐
│   SQLite    │
│  (sql.js)   │
│  Local-First│
└─────────────┘
       │
       ▼
┌─────────────┐
│   Canvas/   │
│    SVG      │
│  Orbit View │
└─────────────┘
```

## Project Structure

```
fragment/
├── app/                    # Application logic
│   ├── orbit/             # Orbit visualization
│   ├── fragments/         # Fragment CRUD
│   ├── inference/         # Ephemeral inference
│   └── ai/                # Constrained AI prompts
├── db/                     # Database schema
├── docs/                   # Documentation
│   ├── MASTER_PROMPT.md  # Complete product definition
│   ├── philosophy.md     # Design principles
│   ├── legal.md          # Legal disclaimers
│   └── privacy.md        # Privacy policy
├── frontend/              # React frontend
└── prompts/               # AI prompt constraints
```

## Philosophy

Fragment is built on these principles:

- **Quiet** — Non-intrusive, calm interface
- **Respectful** — User owns their data and definitions
- **Slow** — Weekly interactions, no daily pressure
- **Non-Directive** — Never tells users what to do
- **Observational** — Helps users see, not change

See [docs/philosophy.md](docs/philosophy.md) for complete design principles.

## Legal & Privacy

Fragment is legally positioned as a self-reflection tool, not therapy or medical advice. All AI outputs are interpretive and may be incorrect.

- [Legal Disclaimers](docs/legal.md)
- [Privacy Policy](docs/privacy.md)

## Documentation

- [Master Prompt](docs/MASTER_PROMPT.md) — Complete product definition
- [Philosophy](docs/philosophy.md) — Design principles and constraints
- [Legal](docs/legal.md) — Legal positioning and disclaimers
- [Privacy](docs/privacy.md) — Privacy policy and data handling

## Development

See [.cursorrules](.cursorrules) for project-specific development conventions.

## License

MIT License - see [LICENSE](LICENSE) for details.

## One-Line Product Truth

> **Fragment helps users see the versions of themselves that are active — without telling them which one to be.**

