Title: FAQ
page-order: 4

This page lists answers to some frequently asked questions about TableShift.

[TOC]

## How can I access {dataset}? Can you help me access it?

Instructions for accessing datasets are on the [datasets]({static}/datasets.html) page.

If you have questions about an individual dataset, first check the instructions linked for that dataset on [accessing the datasets]({static}/datasets.html#accessing-the-datasets). Then, the best way to get help would be by filing a github issue [here](https://github.com/mlfoundations/tableshift/issues) (please make sure to use the "Dataset Access" issue tag!).

## Can you provide preprocessed versions of the datasets?

No. In order to comply with the data access restrictions for all datasets while also providing a unified interface, we do not make preprocessed versions of the datasets available. However, TableShift is fully capable of building the preprocessed datasets from source! See the instructions in the [quisktart]({static}/quickstart.html) for more info.

## Can I contribute my dataset to the benchmark?

We are open to contributions of high-quality datasets that meet the criteria listed in our paper. If you are interested in contributing your dataset to the benchmark, please contact the team directly.

## Where can I find more information about a data source?

* Check the entry for that dataset on the [datasets]({static}/datasets.html) page.
* Follow the links on the [datasets]({static}/datasets.html) page to the source documentation for that dataset.
* Read the TableShift paper.

## How can I cite the TableShift benchmark?

Please cite our paper:

```
@article{gardner2023tableshift,
  title={Benchmarking Distribution Shift in Tabular Data with TableShift},
  author={Gardner, Josh and Popovic, Zoran and Schmidt, Ludwig},
  journal={Advances in Neural Information Processing Systems},
  year={2023}
}
```