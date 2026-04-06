# From the Deep

In this problem, you'll write freeform responses to the questions provided in the specification.

## Random Partitioning

The advantage of using "Random Partitioning" is that the load will be distributed evenly between all boats, which will prevent a single boat from becoming a bottleneck even during high traffic. On the other hand, the disadvantage is the researchers will have to run every single query on each boat to make sure no data is missed, which will cause overhead.

## Partitioning by Hour

"Partitioning by Hour" improves query performance for research because the researcher knows exactly which boat contains specific data, avoiding the need to search every boat to find the data needed. However, this approach risks creating hotspots where one boat contains all the data and the others remain idle, leading to one boat becoming a performance bottleneck.

## Partitioning by Hash Value

"Partitioning by Hash Value" provides load balancing by ensuring that data will be distributed evenly across the boats, which will prevent hotspots. this approach is efficient for retrieving a specific individual record because the hash function points directly to the correct boat, but it remains inefficient for range queries because the researcher must query every boat to avoid data loss.
