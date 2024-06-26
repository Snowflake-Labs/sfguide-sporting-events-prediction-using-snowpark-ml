# SOCCER EURO 2024 PREDICTION: Building a Prediction Model with Snowpark ML (Summit:AI216)
Join this introductory session on using Snowpark ML to build out an end-to-end prediction pipeline, starting from data ingestion through to model deployment and inference. We will address all the steps in ML development, and demonstrate the various capabilities Snowflake provides with Snowpark ML and its supporting MLOps capabilities. The model aims to predict the winner of the Euro 2024 — a polarizing subject for Matteo (Italy supporter) and Simon (England supporter)!

![Banner](https://github.com/Snowflake-Labs/sfguide-sporting-events-prediction-using-snowpark-ml/blob/main/images/readme_banner.png)

## Repository Contents

- **`setup`**: Contains prerequisites for the session.
- **`dataset`**: Data to be uploaded to the Snowflake account before the session.
- **`images`**: Images displayed in the readme and setup scripts.
- **`notebooks_snowflake`**: 5 notebooks to run sequentially that cover the various steps that are compatible with Snowflake Notebooks.
- **`notebooks_hex`**: 5 notebooks to run sequentially that cover the various steps that are compatible with Hex Notebooks (with some minor edits they will also work with standard Jupyter notebooks).

This guide will help you to perform all prerequites to successfully follow the HOL session. 

## Getting Started - Pre Req
Estimated HOL Preparation Time: 10 mins

Before you begin, ensure you have the following:

* Access to the HOL GitHub Repository: [Summit 2024 HOL Repository](https://github.com/Snowflake-Labs/sfguide-sporting-events-prediction-using-snowpark-ml).
* An active Snowflake Trial Account in **AWS US West 2**
* Depending on which notebook environment you wish to use;
  * The above Snowflake Account with Snowflake Notebooks, or
  * A [Hex](https://hex.tech/) Account.

- NOTE - We do not recommend having multiple users running this in the same Snowflake account.
- Clone / download the whole GitHub Repo locally. During the Setup, you'll need the `dataset` folder and the `notebooks` folder to finalize the HOL pre-work.

### 1. Setup Objects (DB, Schema, Tables, Stages)

Execute on your account the `setup.sql` [script](https://github.com/Snowflake-Labs/sfguide-sporting-events-prediction-using-snowpark-ml/blob/main/setup/setup.sql) available in this repository.

### 2. Push Dataset into Stages

Ensure to push the dataset into Snowflake stages prior to the on-site session, as the internet connection might be limited at the venue. 

Below are the steps to push data via the UI (alternatively, you can use `PUT` command via [command line](https://docs.snowflake.com/en/sql-reference/sql/put)

1. Navigate to Data -> DB `EURO2024`, Schema: `Public` -> Stage: `DATA`.
2. Use the warehouse created to list files on the stage.
3. Click on the top right button to add new files.
4. Select dataset files you downloaded from this GitHub Repo and push them in the stage folder. Click on the button upload. 
![Step](https://github.com/Snowflake-Labs/sfguide-sporting-events-prediction-using-snowpark-ml/blob/main/images/upload_dataset_1.png)

You can follow steps described in the [official docs](https://docs.snowflake.com/en/user-guide/data-load-local-file-system-stage-ui)

### 3. Import Notebook and Install Packages

**For Hex Notebooks:**
- Please follow [these steps](https://learn.hex.tech/docs/explore-data/projects/import-export) for importing notebooks.

**For Snowflake Notebooks:**
- Click on Projects -> Notebook
- Import the notebooks located in the `/notebooks` folder by using the import button on the top right.
- As you import, select the database `EURO2024`, the schema `PUBLIC` and the `EURO2024_WH` created from the `setup.sql` script.
- For notebooks (3) and (5), once they are imported add these packages by using the "Packages" dropwdown on the top right:

  - snowflake-ml-python 1.5.0
  - fastparquet 2023.8.0

![Step](https://github.com/Snowflake-Labs/sfguide-sporting-events-prediction-using-snowpark-ml/blob/main/images/installed_packages.png)

### 4. Run the Notebooks

Run through Notebooks 1 through 5 and see who the predicted winner is of Euro 2024 ⚽🏆