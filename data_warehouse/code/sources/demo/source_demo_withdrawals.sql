/*
 Model Name  : demo_withdrawals.sql
 Model Path  : sources\source\demo
 Alias       : withdrawals
 Jinja       : ref('demo_withdrawals')
 SQL         : SELECT <cols> FROM `<db>`.`source`.`demo_withdrawals`
 Note:       : This is an auto-generated dbt model, do not alter
               below as it may be overwritten at any time.
*/
select
    `id`,                                                   -- int64
    `event_timestamp`,                                      -- timestamp
    `user_id`,                                              -- string
    `amount`,                                               -- numeric
    `interface`,                                            -- string
    `currency`,                                             -- string
    `tx_status`                                            -- string
from
    {{ source('demo', 'withdrawals') }}
