# My AI Kit

> Created from [ai-kit-engine-template](https://github.com/MagnusPladsen/ai-kit-engine-template)

AI rules, skills, and plugins for my team.

## Setup

1. Edit `kit.toml` with your team's branding and stacks
2. Add rules to `rules/shared/` (and stack-specific dirs)
3. Add skills to `skills/`
4. Run: `bash install.sh`

## Structure

```
├── kit.toml          # Branding, stacks, themes
├── install.sh        # Wrapper (delegates to engine)
├── rules/            # Your coding rules
│   └── shared/       # Rules for all stacks
├── skills/           # Your skills
├── profiles/         # Preset configurations
├── branding/         # ASCII logo (optional)
└── engine/           # AI Kit Engine (submodule)
```

## Links

- [AI Kit Engine](https://github.com/MagnusPladsen/ai-kit-engine) — the engine powering this kit
- [Full Reference](https://github.com/MagnusPladsen/ai-kit-engine/blob/main/docs/REFERENCE.md) — kit.toml reference, examples, defaults
