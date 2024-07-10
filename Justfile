_default:
    @just --list

# re-initialise venv
reinitialise:
    rm -rf .venv .ruff_cache
    uv venv
    source .envrc
