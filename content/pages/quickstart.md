Title: Quickstart
page-order: 2

# Quickstart
This page provides simple examples to get started accessing data and training models with TableShift. If you would like to set up customized experiments or run experiments at scale, check the examples in our github repository [here](https://github.com/mlfoundations/tableshift/tree/main/examples).

## 1. Environment Setup
We recommend using our prebuilt docker environment as a starting point, due to the complex dependencies required to support the many tabular data models available in TableShift. You can fetch a prebuilt Docker image via

```shell
# fetch the docker image
docker pull ghcr.io/jpgard/tableshift:latest

# run it to test your setup; this automatically launches examples/run_expt.py
docker run ghcr.io/jpgard/tableshift:latest --model xgb

# optionally, use the container interactively
docker run -it --entrypoint=/bin/bash ghcr.io/jpgard/tableshift:latest
```

You can change the `entrypoint` in the above code to `/usr/local/bin/python` to directly enter a Python interpreter and run Python code. For example, the block below loads a dataset for model training:

```python
# To run Python code using the Docker environment from above, run:
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

## 2. Model Training
TableShift includes implementations of 19 different models (described in the paper and in detail here). To train a model on a publicly-available dataset, you can you the example script provided in the examples directory:

```
python examples/run_expt.py --experiment diabetes_readmission --model xgb
```

That's it!

## 3. Optional and Advanced Usage 

This section outlines some advanced use cases: benchmarking your own models, running distributed hyperparameter tuning of the models available in TableShift, or (an experimental/not-officially-supported feature) using your own datasets in TableShift.

### Benchmarking Your Own Models

Training with your own models should be managed in your own scripts (but `examples/run_expt.py` is a good starting point). All you need is a few lines of Python code to access the TableShift data in Pandas, Torch, or Ray format (see the example above) to train your model.

### Distributed hyperparameter tuning with Ray
We recommend tuning the hyperparameters of any method in order to fairly evaluate its performance on the tasks in TableShift.

If you would like to run distributed hyperparameter tuning with Ray on one of the available models, you can run

```
ulimit -u 127590 && python scripts/ray_train.py \ 
    --experiment adult \ 
    --num_samples 2 \ 
    --num_workers 1 \ 
    --cpu_per_worker 4 \ 
    --use_cached \ 
    --models xgb
```

Please note that Ray can require careful tuning based on your system resources for optimal performance. For more information, check the Ray Tune documentation.

### Using Your Own Datasets

The TableShift package is designed to support the benchmark datasets only. However, some users have expressed interest in "bringing their own data". To do this, you'll need to make the following changes to the TableShift Python source:
* Add a `DataSource` for your dataset in `tableshift/core/data_source.py`. The `DataSource` specifies how to fetch a dataset and how to check if it is cached locally.
* Add an `ExperimentConfig` in `tableshift/configs/non_benchmark_configs.py`. An `ExperimentConfig` defines how the data is split (i.e. the ID and OOD partitions) and optional grouping based on sensitive attributes.
* Add a `TaskConfig` for the dataset. A `TaskConfig` defines the features, data types, and any preprocessing for a dataset. 

