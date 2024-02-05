{# 
with source as (

    select "name" as "activity_name",
    CAST ("distance" as number) as "distance",
    CAST ("moving_time" as number) / 3600 as "moving_time",
    CAST ("elapsed_time" as number) / 3600 as "elapsed_time" ,
    CAST ("total_elevation_gain" as number) as "total_elevation_gain",
    "sport_type",
    DATE (CAST ("start_date_local" as timestamp )) as "date",
    "gear_id",
    CAST ("average_heartrate" as number) as avg_heartrate,
    CAST("max_heartrate" as number) as "max_heartrate"
from KEBOOLA_18796.WORKSPACE_62430095."activities"
)


select * from source
#}


with source as (

    select "name" as activity_name

from {{ source ('WORKSPACE_62430095',"activities")}}
)


select * from source

