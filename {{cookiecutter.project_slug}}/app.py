import os
import sys

from dotenv import load_dotenv
from datenwissenschaften import EnvironmentBuilder, ModelBuilder, Trainer

from game import GymWrapper
from model import ModelWrapper

load_dotenv()


def main() -> None:
    venv = EnvironmentBuilder(GymWrapper).build()
    model = ModelBuilder(ModelWrapper).build(venv)
    Trainer().train(model)


if __name__ == "__main__":
    main()
