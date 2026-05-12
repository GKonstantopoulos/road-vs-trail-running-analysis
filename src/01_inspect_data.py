import pandas as pd

# Load dataset
df = pd.read_csv("data/raw/activities.csv")

# Dataset shape
print(df.shape)

# Activity types
print(df["Activity Type"].value_counts())

# Keep only running activities
df_runs = df[df["Activity Type"] == "Run"].copy()

# Shape after filtering
print(df_runs.shape)

# Show columns
columns_df = pd.DataFrame({
    "column_number": range(len(df_runs.columns)),
    "column_name": df_runs.columns
})

# Export column list
columns_df.to_csv(
    "data/processed/columns_list.csv",
    index=False
)

print("Columns list exported successfully.")