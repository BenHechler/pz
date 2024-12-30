from setuptools import setup, find_packages

setup(
    name="palimpzest",
    packages=find_packages(where="src", include=["palimpzest*"]),
    package_dir={"": "src"},
)