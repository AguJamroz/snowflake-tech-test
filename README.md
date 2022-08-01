# Snowflake Data Test - Starter Project

### Prerequisites

#### Python 3.8.* or later.

See installation instructions at: https://www.python.org/downloads/

Check you have python3 installed:

```bash
python3 --version
```

### Dependencies and data

#### Creating a virtual environment

Ensure your pip (package manager) is up to date:

```bash
pip3 install --upgrade pip
```

To check your pip version run:

```bash
pip3 --version
```

Create the virtual environment in the root of the cloned project:

```bash
python3 -m venv .venv
```

#### Activating the newly created virtual environment

You always want your virtual environment to be active when working on this project.

```bash
source ./.venv/bin/activate
```

#### Installing Python requirements

This will install some of the packages you might find useful:

```bash
pip3 install -r ./requirements.txt
```


#### Generating the data

A data generator is included as part of the project in `./input_data_generator/main_data_generator.py`
This allows you to generate a configurable number of months of data.
Although the technical test specification mentions 6 months of data, it's best to generate
less than that initially to help improve the debugging process.

To run the data generator use:

```bash
python ./input_data_generator/main_data_generator.py
```

This should produce customers, products and transaction data under `./input_data/starter`



#### Getting started

Please save Snowflake model code in `snowflake` and infrastructure code in `infra` folder.

Update this README as code evolves.


#### Task solution
This task solution is a basic first version created with limited time.
Requested output data (view) was provided - as a proof exported output_data.csv was added in the repositiory.
Although, with more time many additional steps could be performed.

#### Completed tasks requirenments:
1. Generated data for 6 months.
2. Setup Snowflake environment (code in /infra):
 - created database, schema, tables
 - created file formats
 - created storage integration and stage
3. Setup AWS environment (done in AWS console):
 - created and configured S3 bucket (event notification for Snowpipe)
 - created and configured IAM role to connect with Snowlfake
4. Created Snowpipe pipeline to automaticaly load all transaction json files to table when they'll appear in staged bucket.
5. Copied generated data files to S3 (using AWS CLI).
6. Copied staged csv files to tables (customers, products) using COPY INTO executed manualy in Snowflake.
7. Transformed json transactions to relational table using flatten executed manualy in Snowflake.
8. Created a view with requested data.

#### Most crucial next steps:
1. Create AWS Data Pipeline to automate ETL process.
2. Optimize data model to be able to insert new data without duplicates and missing data (e.g. staging tables, SCD).
3. Prepare AWS infrastucture as a code, not from console.

There are many more possibilities to optimize and automate this task.
I'll gladly disscuss them in the next recruitment steps.