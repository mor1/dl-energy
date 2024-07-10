_default:
    @just --list

# re-initialise venv
reinitialise:
    rm -rf .venv
    uv venv
    source .envrc
