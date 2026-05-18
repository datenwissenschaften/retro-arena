#!/usr/bin/env python3
import os
import sys
from pathlib import Path


def main() -> None:
    if sys.prefix == sys.base_prefix and os.environ.get("POETRY_ACTIVE") != "1":
        print("Please use the platform launcher to run this project:")
        print("  Linux/macOS: ./run.sh")
        print("  Windows: run.bat or .\\run.ps1")
        sys.exit(1)

    from dotenv import load_dotenv
    from datenwissenschaften import EnvironmentBuilder, ModelBuilder, Trainer

    from game import GymWrapper
    from model import ModelWrapper

    load_dotenv()
    venv = EnvironmentBuilder(GymWrapper).build()
    model = ModelBuilder(ModelWrapper).build(venv)
    Trainer().train(model)


if __name__ == "__main__":
    main()
