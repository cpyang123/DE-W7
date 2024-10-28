[![Python Application Test with Github Actions for DE-W6](https://github.com/cpyang123/DE-W6/actions/workflows/test.yml/badge.svg)](https://github.com/cpyang123/DE-W6/actions/workflows/test.yml)

# DE-W7 ETL-Query Script (now in a package!)

This is a command-line interface (CLI) script that handles various ETL (Extract, Transform, Load) processes and querying operations. The script provides several actions to work with data extraction, loading, and querying, using a set of predefined commands.

## Requirements

- Python 3.x
- Required dependencies (install with `pip install -r requirements.txt` if applicable)

## Usage

Run the script with one of the supported actions. The available actions are:

- `extract`: Extracts data from a source.
- `transform_load`: Transforms and loads data into a destination.
- `general_query`: Run a general query. You can specify a custom query or use the default one.


### Building Package:
```bash
python -m build
```

### Installing Package:
```bash
cd dist
pip install accel_data-0.0.1.tar.gz
```

or optionally if you'd  like to be in a development environment:
```bash
pip install --editable .
```



### Example Commands:

1. **Extract Data:**
   ```bash
   accel_data extract
   ```
2. **Transform and Load Data:**
   ```bash
   accel_data transform_load
   ```
3. **Run a General Query:**
   ```bash
   accel_data general_query "SELECT * FROM table_name"
   ```

If no custom query is provided, or if "default" is specified, the script will run the default query.

## Notes

- Ensure that the necessary modules (`extract`, `transform_load`, `general_query`, etc.) are properly implemented in the `mylib` package.
- Update, delete, and create actions are currently placeholders without functionality in this script.




