# deep-learning-challenge: Module 21 Neural Network Assigment

## Repo Directory

```PlainText
deep-learning-challenge/
├── data/
│   ├── raw/
│   └── processed/
├── notebooks/
```

## Setup

To get started, you need to import the necessary dependencies. Add the following code to your script:

```python
# Import our dependencies
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
import pandas as pd
import tensorflow as tf
import numpy as np
```

## Load raw data

raw_data_path = '..data/raw/charity_data.csv'
application_df = pd.read_csv(raw_data_path)

## Save processed data

processed_data_path = '../data/processed/charity_data_processed.csv'
raw_data.to_csv(processed_data_path, index=False)

## Save the plot

image_path = '../images/sample_plot.png'
plt.savefig(image_path)

## References

IRS. Tax Exempt Organization Search Bulk Data Downloads. <https://www.irs.gov/Links> to an external site.

## License

This project is licensed under the terms of the GNU General Public License v3.0. For more details, see the [LICENSE](https://www.gnu.org/licenses/gpl-3.0.en.html) file.
