# Premium vs Freemium

## Description

Find the total number of downloads for paying and non-paying users by date. Include only records where non-paying customers have more downloads than paying customers. The output should be sorted by earliest date first and contain 3 columns: `date`, `non-paying downloads`, and `paying downloads`.

## Dataframe Schemas

### Dataframe-1: `ms_user_dimension`

| Column  | Type |
|---------|------|
| `user_id` | int  |
| `acc_id`  | int  |

### Dataframe-2: `ms_acc_dimension`

| Column          | Type   |
|-----------------|--------|
| `acc_id`        | int    |
| `paying_customer` | varchar |

### Dataframe-3: `ms_download_facts`

| Column    | Type     |
|-----------|----------|
| `date`    | datetime |
| `user_id` | int      |
| `downloads` | int    |

## Example Output

# Premium vs Freemium

## Description

Find the total number of downloads for paying and non-paying users by date. Include only records where non-paying customers have more downloads than paying customers. The output should be sorted by earliest date first and contain 3 columns: `date`, `non-paying downloads`, and `paying downloads`.

## Dataframe Schemas

### Dataframe-1: `ms_user_dimension`

| Column  | Type |
|---------|------|
| `user_id` | int  |
| `acc_id`  | int  |

### Dataframe-2: `ms_acc_dimension`

| Column          | Type   |
|-----------------|--------|
| `acc_id`        | int    |
| `paying_customer` | varchar |

### Dataframe-3: `ms_download_facts`

| Column    | Type     |
|-----------|----------|
| `date`    | datetime |
| `user_id` | int      |
| `downloads` | int    |

## Example Output

The resulting output will be sorted by `date` and will contain the following columns:

- `date`
- `non-paying downloads`
- `paying downloads`
