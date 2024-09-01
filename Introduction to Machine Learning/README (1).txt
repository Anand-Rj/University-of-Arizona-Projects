Loan Default Prediction Project:
- The objective of this project is to construct a machine learning model that forecasts if a customer will default on a loan using past data.
- The project employs a systematic methodology, encompassing data exploration, visualization, and the utilization of diverse machine learning models.
- The primary aim is to produce a project that is publishable and replicable, demonstrating the steps involved in crafting a predictive model for loan default prediction.


Project Organization - The project is organized into the following main steps:

1.) Data Exploration and Cleaning:
- Familiarize with the dataset's contents and column descriptions.
- Conduct summary statistics analysis for both numerical and categorical columns.
- Check for and handle missing values and duplicates appropriately.

2.) Data Visualization:
- Use histograms, density plots, and boxplots to visualize numerical feature distributions.
- Analyze correlations between numerical features with pairplots and heatmaps.
- Investigate categorical features using count plots with and without 'default' as a reference.

3.) Machine Learning Model Development:
- Define the target variable ('default') and predictor variables (numerical and categorical).
- Encode nominal columns via one-hot encoding and ordinal columns through ranking.
- Standardize numerical features using the Standard Scaler.
- Split the data into training and testing sets with stratification.
- Optimize machine learning models' hyperparameters using GridSearchCV and cross-validation.
- Train all models on the training set and evaluate their performance on the testing set.
- Compare models using AUC-PR and ROC curves, considering AUC values across different thresholds.
- Choose the final model based on AUC-PR values and determine a custom threshold for optimal recall performance.


Repository Structure:

1.) Dataset/: Contains the dataset files used in the project.
- German_bank.csv: Original & Cleaned dataset.


2.) ipynb files/: Contains Jupyter notebook.
- Final_project_of_ML.ipynb: Data exploration, cleaning, data visualization, and machine learning modeling steps were carried out within a single Jupyter Notebook (ipynb file).


3.) README file: Contains the project README file.
- README.txt: Detailed project overview and instructions.

4.) Project Report: Contains German Bank Loan report.pdf
-German Bank Loan report.pdf: Detailed information about the whole project and models build upon as an example

Loan_Default_Prediction_Project |
│
├── CSV datafiles |
│   ├── German_bank.csv             
│
├── Jupyter notebooks |
│   ├── Final_project_of_ML.ipynb  #Data exploration and cleaning, Data visualization, Machine learning modeling
│
└── README.txt	|    	
│
└──German Bank Loan report.pdf

Getting Started:
- Clone the repository to your local machine.
- Install the required libraries and dependencies listed in the project environment.
- Run the python notebook in the notebooks/ directory in the specified order to follow the project steps.
- Explore the data, visualizations, and model evaluations as presented in the notebooks.



Conclusion:
The project showcases a thorough method for constructing and assessing machine learning models geared towards predicting loan defaults. By following the outlined steps and exploring the notebook, one can acquire insights into data analysis, model efficacy, and techniques for enhancing recall in imbalanced classification situations.




Necessary Python Libraries - The project requires the following Python libraries:
- pandas
- numpy
- seaborn
- matplotlib
- scikit-learn



