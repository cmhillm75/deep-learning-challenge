# Neural Network Model Report

## The purpose of the analysis

* The intent is to build a tool for the Alphabet Soup foundation to select applicants for funding that have the best chances of success in their fund raising utilizing the csv data of more that 34,000 events. I ran 4 tests with varying levels of change to each model

## Data Preprocessing and Results

* **Data Preprocessing**
  * What variable is the target of the model?
    * `IS_SUCCESSFUL`
  * What are the features in the model?
    * `APPLICATION_TYPE`, `AFFILIATION`, `CLASSIFICATION`, `USE_CASE`, `ORGANIZATION`, `INCOME_AMT`, `ASK_AMT`
  * What variable(s) should be removed from the input data because they are neither targets nor features?
    * `STATUS` and `SPECIAL_CONSIDERATIONS`
  
* **Compiling, Training, and Evaluating the Model**
  * Was the target of 75% accuracy achieved?
    * No, adjustmets were applied to pre-processing and models for each attempt.
  * How many neurons, layers, and activation functions did you select for your neural network model, and why?
    * Details for each Model Setup, including the number of neurons, layers, and activation functions, are outlined in the results section below
  * What steps did you take in your attempts to increase model performance?
    * The four Model Setups in the results section illustrate the steps taken to improve performance, including changes in layer configurations, activation functions, dropout, and hyperparameter tuning.

## Results Summary

## test_1 Model Setup - Sequential deep neural network with fixed neuron configuration

* Type: Sequential deep neural network.
* Input Features: Matches the dimensionality of `X_train_scaled`.
* Layers:
  * First hidden layer:
    * Neurons: 80
    * Activation function: ReLU
  * Second hidden layer:
    * Neurons: 30
    * Activation function: ReLU
  * Output layer:
    * Neurons: 1
    * Activation function: Sigmoid
* Outcome: `test_1 accuracy: 0.7265 - loss: 0.5668`

## test_2 Model Setup - Sequential deep neural network with Dropout layers for improved regularization

* Type: Sequential deep neural network.
* Input Features: Matches the dimensionality of `X_train_scaled`.
* Changes from First Attempt:
  * Increased the number of neurons in the first hidden layer to 100.
  * Added a Dropout layer after each hidden layer to randomly deactivate 20% of neurons.
* Layers:
  * First hidden layer:
    * Neurons: 100
    * Activation function: ReLU
    * Additional: Dropout (20%)
  * Second hidden layer:
    * Neurons: 50
    * Activation function: ReLU
    * Additional: Dropout (20%)
  * Output layer:
    * Neurons: 1
    * Activation function: Sigmoid
* Outcome: `test_2 accuracy: 0.7250 - loss: 0.5601`

## test_3 Model Setup - Sequential deep neural network with tunable neurons and hyperparameter optimization

* Tuned Neurons: Ranged from 50 to 150 in increments of 10.
* Framework: Keras Tuner (`keras_tuner`) for hyperparameter optimization.
* Type: Sequential deep neural network.
* Input Features: Matches the dimensionality of `X_train_scaled`.
* Changes from Second Attempt:
  * the number of neurons in the hidden layers are tuned.
  * Removed the Dropout layer.
  * Introduced hyperparameter optimization with `keras_tuner`.
  * Added in a learning rate for the Adam optimizer.
* Layers:
  * First hidden layer:
    * Neurons: Tunable (50 to 150, step=10)
    * Activation function: ReLU
  * Second hidden layer:
    * Neurons: Tunable (20 to 100, step=10)
    * Activation function: ReLU
  * Output layer:
    * Neurons: 1
    * Activation function: Sigmoid
* Hyperparameters Tuned:
  * Neurons in both hidden layers
  * Learning rate (`0.001`, `0.0005`, `0.0001`) for the Adam optimizer
* Compilation:
  * Optimizer: Adam with tunable learning rate
  * Loss function: Binary cross-entropy
  * Metric: Accuracy
* Outcome: `test_3 accuracy: 0.7248 - loss: 0.5597`

## test_4 Model Setup - Sequential deep neural network using Keras Tuner for hyperparameter optimization

* Input Features: Matches the dimensionality of X_train_scaled.
* Input layer: Specifies the input shape of the data.
  * First hidden layer: Neurons: Tunable (50 to 150, step=10) Activation function: ReLU
  * Second hidden layer: Neurons: Tunable (20 to 100, step=10) Activation function: ReLU
  * Output layer: Neurons: 1 Activation function: Sigmoid
* Hyperparameters Tuned:
  * Neurons in the first and second hidden layers
  * Learning rate (0.001, 0.0005, 0.0001) for the Adam optimizer
* Compilation
  * Optimizer: Adam with tunable learning rate
  * Loss function: Binary cross-entropy
  * Metric: Accuracy
* Tuning Method: Hyperband tuner with:
  * Objective: Validation accuracy
  * Maximum epochs: 20
  * Number of Hyperband iterations: 2
  * Best hyperparameters found and extracted using `tuner.get_best_hyperparameters`.
* Outcome: `test_4 accuracy: 0.7255 - loss: 0.5519`

## Further Changes or Other Models

* **Random Forest Classifier**:
  * Reason: Random forests handle feature importance well, which could help analyze the significance of categorical variables like `APPLICATION_TYPE` and `CLASSIFICATION`. It is also advantageous in addressing overfitting.
* **Support Vector Machine (SVM)**:
  * Reason: If the data is well-scaled and relatively clean, SVMs can perform well on binary classification problems due to their ability to maximize the margin between data points.
* **Logistic Regression**:
  * Reason: Using a simple baseline model, it could provide quick insights into the data and its predictive power without extensive tuning.
