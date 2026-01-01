-- Fragment Database Schema
-- SQLite local-first database

-- Fragments table
-- Stores user-defined identity fragments
CREATE TABLE IF NOT EXISTS fragments (
    fragment_id TEXT PRIMARY KEY,
    name TEXT NOT NULL,
    values TEXT NOT NULL,  -- JSON array: ["clarity", "precision"]
    behaviors TEXT NOT NULL,  -- JSON array: ["planning", "debugging"]
    stressors TEXT NOT NULL,  -- JSON array: ["ambiguity", "interruptions"]
    needs TEXT NOT NULL,  -- JSON array: ["quiet time", "clear scope"]
    created_at INTEGER NOT NULL,  -- Unix timestamp
    last_edited_at INTEGER NOT NULL  -- Unix timestamp
);

-- Weekly selections table
-- Tracks which fragments were selected each week
CREATE TABLE IF NOT EXISTS weekly_selections (
    selection_id TEXT PRIMARY KEY,
    week_start INTEGER NOT NULL,  -- Unix timestamp of week start (Monday)
    fragment_id TEXT NOT NULL,
    created_at INTEGER NOT NULL,
    FOREIGN KEY (fragment_id) REFERENCES fragments(fragment_id) ON DELETE CASCADE
);

-- Fragment tensions table
-- User-reported tensions between fragments (optional)
CREATE TABLE IF NOT EXISTS fragment_tensions (
    tension_id TEXT PRIMARY KEY,
    week_start INTEGER NOT NULL,
    fragment_id_1 TEXT NOT NULL,
    fragment_id_2 TEXT NOT NULL,
    created_at INTEGER NOT NULL,
    FOREIGN KEY (fragment_id_1) REFERENCES fragments(fragment_id) ON DELETE CASCADE,
    FOREIGN KEY (fragment_id_2) REFERENCES fragments(fragment_id) ON DELETE CASCADE
);

-- Fragment neglect table
-- User-reported fragments that felt ignored (optional)
CREATE TABLE IF NOT EXISTS fragment_neglect (
    neglect_id TEXT PRIMARY KEY,
    week_start INTEGER NOT NULL,
    fragment_id TEXT NOT NULL,
    created_at INTEGER NOT NULL,
    FOREIGN KEY (fragment_id) REFERENCES fragments(fragment_id) ON DELETE CASCADE
);

-- Indexes for performance
CREATE INDEX IF NOT EXISTS idx_weekly_selections_week ON weekly_selections(week_start);
CREATE INDEX IF NOT EXISTS idx_weekly_selections_fragment ON weekly_selections(fragment_id);
CREATE INDEX IF NOT EXISTS idx_fragments_created ON fragments(created_at);
CREATE INDEX IF NOT EXISTS idx_fragment_tensions_week ON fragment_tensions(week_start);
CREATE INDEX IF NOT EXISTS idx_fragment_neglect_week ON fragment_neglect(week_start);

