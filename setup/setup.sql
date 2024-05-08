-- Create objects for the HOL. Database and stages to push files.
CREATE DATABASE IF NOT EXISTS SUMMIT_EURO2024;
CREATE STAGE IF NOT EXISTS SUMMIT_EURO2024.PUBLIC.DATA;
CREATE STAGE IF NOT EXISTS SUMMIT_EURO2024.PUBLIC.PYTHON_LOAD;

CREATE WAREHOUSE IF NOT EXISTS SUMMIT_EURO2024_WH
    WAREHOUSE_SIZE = 'xsmall' 
    AUTO_SUSPEND=60 
    AUTO_RESUME=True;

-- After creating these objects, push dataset into the stage DATA. 
-- If you are not familiar with pushing files into stage, check the setup.md in this repo to do it directly using Snowsight or via command line. 
---- fixture.csv
---- rankings.csv
---- results.csv
