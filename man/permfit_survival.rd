% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/source_permfit_survival_20230610.r
\name{permfit_survival}
\alias{permfit_survival}
\title{Title PermFIT: A permutation-based feature importance test extended to survival analysis}
\usage{
permfit_survival(
  train,
  validate = NULL,
  k_fold = 5,
  n_perm = 100,
  pathway_list = list(),
  method = c("ensemble_dnnet", "random_forest", "lasso", "linear", "svm", "dnnet",
    "survival_cox", "survival_aft", "DeepSurv", "DeepHit", "Xgboost", "Survival_SVM",
    "DnnSurv")[8],
  shuffle = NULL,
  ...
)
}
\arguments{
\item{train}{A training dataset, which is a dnnetSurvInput object, created by deepTL::importDnnetSurv().}

\item{validate}{A validation dataset is required when k_fold = 0.}

\item{k_fold}{K-fold cross-fitting. Default k_fold = 5. If preferring not to use cross-fitting strategy, set k_fold to zero.}

\item{n_perm}{Number of permutations repeated for each feature, which is L in the manuscript's algorithm 1. Default n_perm = 100.}

\item{pathway_list}{For categorical variables, dummy variables to present them should be created in advance. For variables with more than 2 categories, all the corresponding dummy variables should be put in the patheway_list and permuted simultaneously to calculate the permutation feature importance.}

\item{method}{Name of the methods:
"random_forest" for random survival forest;
"survival_aft" for accelerated failure time model;
"survival_cox" for Cox-PH model;
"DeepSurv" for DeepSurv;
"DeepHit" for Deephit;
"Xgboost" for XGBoost;
"Survival_SVM" for survival support vector machine;
"lasso" for Lasso-Cox;
"ensemble_dnnet" for SurvDNN.}

\item{shuffle}{If shuffle is null, the data will be shuffled for cross-fitting; if random shuffle is not desired, please provide a bector of numbers for cross-fitting indices.}

\item{...}{Additional parameters passed to each method.}
}
\value{
A PermFIT object, with importance = permutation feature importance for all continuous and binary features, and imp_block = permutation feature importance for all categorical features with more than two groups.
}
\description{
Title PermFIT: A permutation-based feature importance test extended to survival analysis
}
