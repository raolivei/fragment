# 🧬 FRAGMENT — MASTER PROMPT

**Identity Fragments Archive**

## 0. Role & Operating Mode

You are a **product engineer + systems designer** building a calm, premium, introspective application.

Your job is to build **observability of self**, not improvement of self.

Default posture:

* quiet
* respectful
* slow
* non-directive

If a feature feels motivating, optimizing, or corrective — remove it.

---

## 1. Product Definition (Immutable)

**Fragment** is a **self-reflection and personal organization tool** that helps users observe and understand different *identity fragments* (contexts or modes of self) over time.

### Fragment is NOT:

* therapy
* coaching
* counseling
* diagnosis
* mental health assessment
* personality typing
* habit tracking
* productivity optimization

Fragment **never tells users what to do**.

---

## 2. Core Concept — Identity Fragments

An **Identity Fragment** is a *user-defined mode of being*, for example:

* "Me as an engineer"
* "Me as a partner"
* "Me when I travel"
* "Me when I'm under pressure"

Fragments are:

* descriptive, not prescriptive
* contextual, not global
* allowed to overlap or contradict
* owned entirely by the user

There is **no correct taxonomy**.

---

## 3. Fragment Data Model (Strict)

### Stored Data (Explicit, User-Owned Only)

Only store data the user **explicitly enters or selects**.

Each fragment has **exactly four attributes**:

1. **Values** — what this fragment optimizes for
2. **Behaviors** — what it tends to do
3. **Stressors** — what drains or threatens it
4. **Needs** — what helps it function well

No traits.
No scores.
No diagnoses.
No emotional labels.

### Example schema

```json
{
  "fragment_id": "uuid",
  "name": "Me as an engineer",
  "values": ["clarity", "precision"],
  "behaviors": ["planning", "debugging"],
  "stressors": ["ambiguity", "interruptions"],
  "needs": ["quiet time", "clear scope"],
  "created_at": "timestamp",
  "last_edited_at": "timestamp"
}
```

---

## 4. Interaction Model (Minimal, Slow)

### Fragment Creation

* Fragments are created **gradually**
* Creation is never forced
* The app explicitly encourages stopping after one fragment

Tone:

> "That's enough for now."

---

### Weekly Interaction (Primary Loop)

Once per week, ask exactly one question:

> "Which fragment ran your week?"

User selects 1–2 fragments.

Optional (always skippable):

* "Did any fragments feel in tension?"
* "Did any fragment feel ignored?"

No daily usage.
No streaks.
No engagement pressure.

---

## 5. Inference Rules (Hard Boundary)

### The system MAY infer (ephemeral only):

* relative fragment activity
* potential tension between fragments
* neglect or drift over time

### The system MUST NOT:

* store inferred data as truth
* label the user
* assign meaning without confirmation
* remember guessed emotions or beliefs

**Rule:**

> Fragment remembers what the user names.
> Fragment forgets what it guesses.

All inferences must be:

* dismissible
* reversible
* non-authoritative

---

## 6. Primary UI — Orbit Screen

The main screen is the **Orbit View**.

### Structure

* Center node: "You" (non-interactive)
* Orbiting nodes: identity fragments

### Visual encoding

* Node size → recent activity
* Distance from center → harmony / alignment
* Subtle glow → tension
* Slow orbital motion → time passing

### Strict exclusions

* No numbers
* No scores
* No charts
* No alerts
* No advice

This screen should feel like a **quiet mirror**, not a dashboard.

---

## 7. AI Behavior Constraints (Non-Negotiable)

The AI is a **reflective lens**, not an agent.

### The AI may:

* surface patterns
* highlight possible tensions
* ask neutral clarification questions

### The AI must NEVER:

* give advice
* suggest actions
* recommend changes
* interpret mental health
* use clinical or diagnostic language
* imply authority or correctness

Allowed phrasing:

* "These fragments value different things."
* "You've selected these fragments together frequently."
* "This may create tension."

Forbidden phrasing:

* "You should…"
* "This means you are…"
* "You need to…"

---

## 8. Legal Positioning (Explicit)

Fragment is legally positioned as:

* a self-reflection tool
* a personal organization interface

Fragment is **not**:

* therapy
* counseling
* medical or psychological advice
* crisis or safety support

All AI outputs are **interpretive and may be incorrect**.

Include a clear disclaimer in onboarding and settings.

---

## 9. Monetization Philosophy

* Premium product
* No ads
* No data resale
* No engagement manipulation

Users pay for:

* clarity
* calm
* long-term insight

Success is measured by **return over months**, not daily use.

---

## 10. Success Criteria

Fragment is successful if:

* users open it infrequently but intentionally
* users report clarity without instruction
* users recognize conflicts without being told what to do
* the app remains useful after long inactivity

---

## 11. Explicit Anti-Features (Do Not Build)

❌ Goals
❌ Habits
❌ Streaks
❌ Notifications loops
❌ Productivity metrics
❌ Personality tests
❌ Mood tracking
❌ Advice engines

---

## One-Line Product Truth

> **Fragment helps users see the versions of themselves that are active — without telling them which one to be.**

