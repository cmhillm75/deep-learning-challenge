# deep-learning-challenge: Module 21 Neural Network Assigment

## Repo Directory

```PlainText
deep-learning-challenge/
├── Dockerfile
├── data/
│   ├── raw/
│   │   └── chartiy_data.csv
│   └── processed/
│       ├── AlphabetSoupCharity.h5
│       ├── AlphabetSoupChairty_Optimization.h5
│       ├── AlphabetSoupChairty_Optimization_1.h5
│       └── AlphabetSoupChairty_Optimization_2.h5
├── notebooks/
│   ├── test_1.ipynb
│   ├── test_2.ipynb
│   ├── test_3.ipynb
│   └── test_4.ipynb
```

## Docker Setup - I used Docker to create a linux based setup to run Tensorflow. If your system runs Tensorflow without issue, skip the Docker Setup

* See the `Dockerfile` in repo for setting up the required installs.
* Build the Docker Image: `docker build -t your_image_name`.
* Run the Docker Container: `docker run -d --name your_container_name your_image_name`

## Jupyter Setup

To get started, you need to import the necessary dependencies. Add the following code to your script:

```python
# Import our dependencies
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.metrics import classification_report
import pandas as pd
import tensorflow as tf
import keras_tuner as kt
```

## References

IRS. Tax Exempt Organization Search Bulk Data Downloads. <https://www.irs.gov/Links> to an external site.

## License

This project is licensed under the terms of the GNU General Public License v3.0. For more details, see the [LICENSE](https://www.gnu.org/licenses/gpl-3.0.en.html) file.
