Title: TableShift
page-order: 1
save_as: index.html
url: index.html

![Tableshift Logo]({static}/images/tableshift.png)

TableShift is a benchmark and associated Python library for machine learning with tabular data under distribution shift.

The TableShift Python package contains:

1. An API providing unified access to 15 benchmark datasets with predefined real-world domain splits in only a few lines of Python code.
2. Utilities for loading the datasets in a variety of widely-used formats for tabular data modeling, including as Pandas DataFrames, Torch DataLoaders, and Ray Datasets.
3. Tools for applying common tabular preprocessing tasks such as normalization and categorical value encoding.

Additionally, the TableShift [repo](https://github.com/mlfoundations/tableshift) contains implementations of a variety of tabular data models, including scripts for training, evaluation, and hyperparameter tuning.

To get started with TableShift by running the pre-built Docker image:

```bash
# fetch the docker image
docker pull ghcr.io/jpgard/tableshift:latest

# run it to test your setup; this automatically launches examples/run_expt.py
docker run ghcr.io/jpgard/tableshift:latest --model xgb
```

The Docker image is useful for reproducing TableShift experiments and checking your setup. However, it's likely that you'll also want to develop your own models.

Below we show an example of how to access a TableShift dataset for model training:
```python
# To run this Python code using the Docker environment from above, run:
# docker run -it --entrypoint=/usr/local/bin/python ghcr.io/jpgard/tableshift:latest

from tableshift import get_dataset

dataset_name = "diabetes_readmission"
dset = get_dataset(dataset_name)

# Fetch a pandas DataFrame of the training set
X_tr, y_tr, _, _ = dset.get_pandas("train")

# Fetch and use a pytorch DataLoader
train_loader = dset.get_dataloader("train", batch_size=1024)

for X, y, _, _ in train_loader:
    ...
```

If you find an issue with TableShift, please file a GitHub issue in the project [repo](https://github.com/mlfoundations/tableshift).

If you find this site or the TableShift software useful, please cite our paper.

```
@article{gardner2023tableshift,
  title={Benchmarking Distribution Shift in Tabular Data with TableShift},
  author={Gardner, Josh and Popovic, Zoran and Schmidt, Ludwig},
  journal={Advances in Neural Information Processing Systems},
  year={2023}
}
```