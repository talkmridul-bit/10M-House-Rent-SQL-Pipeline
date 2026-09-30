;with Cleaned_House_Rent as (
    select distinct
      [Property ID],
      [Year Built],
      TRY_CAST(Rent as bigint ) as Rent,
      [Area Type],
      City,
      [Furnishing Status],
      TRY_CAST(Bathroom as int ) as Bathroom
  from [dbo].[House_Rent_10M_balanced_40cities]
  where TRY_CAST(Rent as bigint ) > 0 
    and TRY_CAST(Bathroom as int ) > 0 
    )
    select
      [Year Built],
      [Area Type],
      City,
      [Furnishing Status],
      sum(Rent) as Total_Rent,
      sum(Bathroom) as Total_Bathroom,
      count([Property ID]) as Total_Property
  from Cleaned_House_Rent
  where [Year Built] is not null
    and [Area Type] is not null
    and City is not null
    and [Furnishing Status] is not null
  group by [Year Built],[Area Type],City,[Furnishing Status]
   order by Total_Rent desc;


        