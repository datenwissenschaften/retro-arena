# {{ cookiecutter.project_name }}

{{ cookiecutter.description }}

This project trains a retro-game reinforcement-learning agent with Gymnasium and Stable-Baselines3. The starter layout keeps game logic, model construction, and the training entry point separate so experiments stay easy to change.

## Setup

```bash
cp .env.example .env
poetry install
```

## Run

```bash
poetry run python app.py
```

## Project Layout

- `app.py`: starts the training run
- `.env.example`: documents the local runtime variables
- `game/`: Gymnasium wrapper, observation processing, rewards, and termination logic
- `model/`: PPO model configuration and learning-rate schedule
- `pyproject.toml`: project metadata, dependencies, and formatter/linter settings

## What To Customize

- Update RAM addresses and reward logic in `game/__init__.py`.
- Tune PPO settings in `model/__init__.py`.
- Copy `.env.example` to `.env`, then update local paths, ROM locations, and training output directories.
- Record assumptions about the ROM, savestates, and scoring rules here so other contributors can reproduce your runs.

## License

{{ cookiecutter.license }}
