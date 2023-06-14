Title: Quickstart
page-order: 2

# Quickstart
This page provides simple examples to get started accessing data and training models with TableShift. If you would like to set up customized experiments or run experiments at scale, check the examples in our github repository [here](https://github.com/mlfoundations/tableshift/tree/main/examples).

## 1. Environment Setup
We recommend using the Conda environment in the TableShift github repo. You can create an environment with all dependencies required via

```conda env create -f environment.yml```

where environment.yml can be changed to point to the location of the file at the root of the TableShift git repo.

Once the conda environment is created, activate it with

```conda activate tableshift```

## 2. Model Training
TableShift includes implementations of 19 different models (described in the paper and in detail here). To train a model on a publicly-available dataset, you can you the example script provided in the examples directory:

```python examples/run_expt.py --experiment diabetes_readmission --model xgb```

That's it!

## 3. [Optional/Advanced Usage] Distributed hyperparameter tuning with Ray
If you would like to run distributed hyperparameter tuning with Ray, you can run

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
