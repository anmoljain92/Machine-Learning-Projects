
libname rr "I:\Jumeirah_2\Phase2\28.03.2016_EDA slides\Work files copy";

/*Standaridizing variabled which we selected*/
proc standard data=rr.nonmember_iteration7 mean=0 std=1 out=rr.standard_output ;
var rev_rms_per_stay
rev_per_stay
total_rev_rms
rev_couple_stay
group_stays
rev_group_stay
leisure_nights
leisure_nights_per_year
rev_fnb_per_stay
total_rev_fnb
rev_per_night
rev_rms_per_night
rev_exbus_stay
rev_bus_stay
extended_bus_stays
rev_solo_stay
distinct_Countries
avgdys_Easter
avgdys_Dubai_Shopping_Festival
couple_stays
weekday_nights
weekday_nights_per_year
total_nights
nights_per_year
longest_staynights
business_nights_per_year
business_nights
nights_per_stay
avgdys_Ramadan
rev_fnb_per_night
Total_revenue
rev_weekday_stay
rev_ex_stay
total_rev_oth
solo_stays
adults_per_stay
distinct_bookings
distinct_bookings_per_year
business_stays_per_year
weekday_stays
business_stays
weekend_nights
weekend_stays
weekend_nights_per_year
rev_weekend_stay
rev_oth_per_night
rev_oth_per_stay
avg_lead_time
time_since_last_booking
lead_time
rev_exles_stay
rev_les_stay
extended_les_stays
leisure_stays
leisure_stays_per_year
family_stays
kids_per_stay
rev_family_stay

;
run;

/*Capping Standardized data at +-3*/

Data rr.standard_output_capped;
Set rr.standard_output ;
If rev_rms_per_stay > 3 then rev_rms_per_stay = 3;
If rev_per_stay > 3 then rev_per_stay = 3;
If total_rev_rms > 3 then total_rev_rms = 3;
If rev_couple_stay > 3 then rev_couple_stay = 3;
If group_stays > 3 then group_stays = 3;
If rev_group_stay > 3 then rev_group_stay = 3;
If leisure_nights > 3 then leisure_nights = 3;
If leisure_nights_per_year > 3 then leisure_nights_per_year = 3;
If rev_fnb_per_stay > 3 then rev_fnb_per_stay = 3;
If total_rev_fnb > 3 then total_rev_fnb = 3;
If rev_per_night > 3 then rev_per_night = 3;
If rev_rms_per_night > 3 then rev_rms_per_night = 3;
If rev_exbus_stay > 3 then rev_exbus_stay = 3;
If rev_bus_stay > 3 then rev_bus_stay = 3;
If extended_bus_stays > 3 then extended_bus_stays = 3;
If rev_solo_stay > 3 then rev_solo_stay = 3;
If distinct_Countries > 3 then distinct_Countries = 3;
If avgdys_Easter > 3 then avgdys_Easter = 3;
If avgdys_Dubai_Shopping_Festival > 3 then avgdys_Dubai_Shopping_Festival = 3;
If couple_stays > 3 then couple_stays = 3;
If weekday_nights > 3 then weekday_nights = 3;
If weekday_nights_per_year > 3 then weekday_nights_per_year = 3;
If total_nights > 3 then total_nights = 3;
If nights_per_year > 3 then nights_per_year = 3;
If longest_staynights > 3 then longest_staynights = 3;
If business_nights_per_year > 3 then business_nights_per_year = 3;
If business_nights > 3 then business_nights = 3;
If nights_per_stay > 3 then nights_per_stay = 3;
If avgdys_Ramadan > 3 then avgdys_Ramadan = 3;
If rev_fnb_per_night > 3 then rev_fnb_per_night = 3;
If Total_revenue > 3 then Total_revenue = 3;
If rev_weekday_stay > 3 then rev_weekday_stay = 3;
If rev_ex_stay > 3 then rev_ex_stay = 3;
If total_rev_oth > 3 then total_rev_oth = 3;
If solo_stays > 3 then solo_stays = 3;
If adults_per_stay > 3 then adults_per_stay = 3;
If distinct_bookings > 3 then distinct_bookings = 3;
If distinct_bookings_per_year > 3 then distinct_bookings_per_year = 3;
If business_stays_per_year > 3 then business_stays_per_year = 3;
If weekday_stays > 3 then weekday_stays = 3;
If business_stays > 3 then business_stays = 3;
If weekend_nights > 3 then weekend_nights = 3;
If weekend_stays > 3 then weekend_stays = 3;
If weekend_nights_per_year > 3 then weekend_nights_per_year = 3;
If rev_weekend_stay > 3 then rev_weekend_stay = 3;
If rev_oth_per_night > 3 then rev_oth_per_night = 3;
If rev_oth_per_stay > 3 then rev_oth_per_stay = 3;
If avg_lead_time > 3 then avg_lead_time = 3;
If time_since_last_booking > 3 then time_since_last_booking = 3;
If lead_time > 3 then lead_time = 3;
If rev_exles_stay > 3 then rev_exles_stay = 3;
If rev_les_stay > 3 then rev_les_stay = 3;
If extended_les_stays > 3 then extended_les_stays = 3;
If leisure_stays > 3 then leisure_stays = 3;
If leisure_stays_per_year > 3 then leisure_stays_per_year = 3;
If family_stays > 3 then family_stays = 3;
If kids_per_stay > 3 then kids_per_stay = 3;
If rev_family_stay > 3 then rev_family_stay = 3;

If rev_rms_per_stay <-3 then rev_rms_per_stay =-3;
If rev_per_stay <-3 then rev_per_stay =-3;
If total_rev_rms <-3 then total_rev_rms =-3;
If rev_couple_stay <-3 then rev_couple_stay =-3;
If group_stays <-3 then group_stays =-3;
If rev_group_stay <-3 then rev_group_stay =-3;
If leisure_nights <-3 then leisure_nights =-3;
If leisure_nights_per_year <-3 then leisure_nights_per_year =-3;
If rev_fnb_per_stay <-3 then rev_fnb_per_stay =-3;
If total_rev_fnb <-3 then total_rev_fnb =-3;
If rev_per_night <-3 then rev_per_night =-3;
If rev_rms_per_night <-3 then rev_rms_per_night =-3;
If rev_exbus_stay <-3 then rev_exbus_stay =-3;
If rev_bus_stay <-3 then rev_bus_stay =-3;
If extended_bus_stays <-3 then extended_bus_stays =-3;
If rev_solo_stay <-3 then rev_solo_stay =-3;
If distinct_Countries <-3 then distinct_Countries =-3;
If avgdys_Easter <-3 then avgdys_Easter =-3;
If avgdys_Dubai_Shopping_Festival <-3 then avgdys_Dubai_Shopping_Festival =-3;
If couple_stays <-3 then couple_stays =-3;
If weekday_nights <-3 then weekday_nights =-3;
If weekday_nights_per_year <-3 then weekday_nights_per_year =-3;
If total_nights <-3 then total_nights =-3;
If nights_per_year <-3 then nights_per_year =-3;
If longest_staynights <-3 then longest_staynights =-3;
If business_nights_per_year <-3 then business_nights_per_year =-3;
If business_nights <-3 then business_nights =-3;
If nights_per_stay <-3 then nights_per_stay =-3;
If avgdys_Ramadan <-3 then avgdys_Ramadan =-3;
If rev_fnb_per_night <-3 then rev_fnb_per_night =-3;
If Total_revenue <-3 then Total_revenue =-3;
If rev_weekday_stay <-3 then rev_weekday_stay =-3;
If rev_ex_stay <-3 then rev_ex_stay =-3;
If total_rev_oth <-3 then total_rev_oth =-3;
If solo_stays <-3 then solo_stays =-3;
If adults_per_stay <-3 then adults_per_stay =-3;
If distinct_bookings <-3 then distinct_bookings =-3;
If distinct_bookings_per_year <-3 then distinct_bookings_per_year =-3;
If business_stays_per_year <-3 then business_stays_per_year =-3;
If weekday_stays <-3 then weekday_stays =-3;
If business_stays <-3 then business_stays =-3;
If weekend_nights <-3 then weekend_nights =-3;
If weekend_stays <-3 then weekend_stays =-3;
If weekend_nights_per_year <-3 then weekend_nights_per_year =-3;
If rev_weekend_stay <-3 then rev_weekend_stay =-3;
If rev_oth_per_night <-3 then rev_oth_per_night =-3;
If rev_oth_per_stay <-3 then rev_oth_per_stay =-3;
If avg_lead_time <-3 then avg_lead_time =-3;
If time_since_last_booking <-3 then time_since_last_booking =-3;
If lead_time <-3 then lead_time =-3;
If rev_exles_stay <-3 then rev_exles_stay =-3;
If rev_les_stay <-3 then rev_les_stay =-3;
If extended_les_stays <-3 then extended_les_stays =-3;
If leisure_stays <-3 then leisure_stays =-3;
If leisure_stays_per_year <-3 then leisure_stays_per_year =-3;
If family_stays <-3 then family_stays =-3;
If kids_per_stay <-3 then kids_per_stay =-3;
If rev_family_stay <-3 then rev_family_stay =-3;
run;

/*Proc CORR for selected variables after Varclus*/

PROC CORR data=rr.nonmember_iteration7    OUTS=rr.corr_output_24 (WHERE=(_TYPE_="CORR"));
VAR
rev_rms_per_stay
rev_group_stay
leisure_nights_per_year
rev_fnb_per_stay
rev_rms_per_night
rev_exbus_stay
weekday_nights
Total_revenue
distinct_bookings
weekend_nights
rev_oth_per_night
avg_lead_time
rev_exles_stay
leisure_stays_per_year
family_stays

rev_solo_stay
distinct_Countries
avgdys_Easter
avgdys_Dubai_Shopping_Festival
couple_stays
avgdys_Ramadan
rev_fnb_per_night
solo_stays
adults_per_stay
;
RUN;

/*Fastclus with 21 variables*/

libname aa "I:\Jumeirah_2\Phase2\28.03.2016_EDA slides\Clustering Iterations";

proc fastclus data=rr.standard_output_capped maxclusters=4 maxiter=100 converge=0.005 outseed = rr.test_1 out=rr.fastclus_1;
var 
rev_rms_per_stay
leisure_nights_per_year
rev_fnb_per_stay
rev_rms_per_night
rev_exbus_stay
weekday_nights
Total_revenue
/*distinct_bookings*/
weekend_nights
avg_lead_time
rev_exles_stay
family_stays
rev_solo_stay
avgdys_Easter
/*avgdys_Dubai_Shopping_Festival*/
couple_stays
adults_per_stay


/*avgdys_Ramadan*/
distinct_Countries
/*leisure_stays_per_year*/
rev_oth_per_night
rev_group_stay

;
id unique_id;
run;

proc candisc data=rr.fastclus_1 out=kk noprint;
class Cluster;
var 
rev_rms_per_stay
leisure_nights_per_year
rev_fnb_per_stay
rev_rms_per_night
rev_exbus_stay
weekday_nights
Total_revenue
/*distinct_bookings*/
weekend_nights
avg_lead_time
rev_exles_stay
family_stays
rev_solo_stay
avgdys_Easter
/*avgdys_Dubai_Shopping_Festival*/
couple_stays
adults_per_stay


/*avgdys_Ramadan*/
distinct_Countries
/*leisure_stays_per_year*/
rev_oth_per_night
rev_group_stay

;
legend1 frame cframe=ligr label=none cborder=black
position=center value=(justify=center);
axis1 label=(angle=90 rotate=0) minor=none;
axis2 minor=none;
 
proc gplot data=kk;
plot Can2*Can1=Cluster/frame cframe=ligr
legend=legend1 vaxis=axis1 haxis=axis2;
run;
 

proc sql;
select cluster, count(unique_id) from rr.fastclus_1
group by cluster;
quit;

/*Joining clusters with iteration7*/

Proc sql;
create table rr.nonmember_iteration8 as
select a.*, b.cluster from rr.nonmember_iteration7 as a
left join rr.fastclus_1 as b
ON a.unique_id = b.unique_id;
quit;

proc sql;
create table xx as select unique_id,cluster from rr.nonmember_iteration8
where cluster=.;
quit;

proc sql;
create table xx2 as select a.unique_id, b.cluster 
from xx as a
inner join rr.Nonmembers_97_cluster_only as b 
on a.unique_id=b.uniqueid;
quit;

proc sql;
create table nonmember_iterationx as select a.*, b.cluster as cluster2 
from rr.nonmember_iteration8 as a
left join xx2 as b 
on a.unique_id=b.unique_id;
quit;

data nonmember_iterationx2;
set nonmember_iterationx;
if cluster=. then cluster=cluster2;
run;

data rr.nonmember_iteration8new;
set nonmember_iterationx2;
if cluster=. then delete;
drop cluster2;
run;





proc sql;
select cluster, count(unique_id) from rr.nonmember_iteration8
group by cluster;
quit;

proc sql;
create table rr.summary_profile as select cluster, count(*) as total_count, 
/*avg(jum_time_of_assoc) as tenure,*/
avg(time_since_last_booking) as avg_recency,
avg(rev_per_stay) as avg_rev_per_stay,
avg(distinct_bookings) as avg_visits,
avg(business_stays) as avg_business_stays,
avg(leisure_stays) as avg_leisure_stays,
avg(weekend_stays) as avg_weekend_stays,
avg(weekday_stays) as avg_weekday_stays,
avg(avg_lead_time) as avg_lead_time,
avg(solo_stays) as avg_solo_stays,
avg(family_stays) as avg_family_stays,
avg(couple_stays) as avg_couple_stays,
avg(total_revenue) as avg_total_revenue,
avg(total_rev_fnb) as avg_total_rev_fnb,
avg (total_rev_oth)as avg_total_rev_fnb,
avg(visitfav_maj_code_cor) as avg_visitfav_maj_code_cor,
avg(visitfav_maj_code_air) as avg_visitfav_maj_code_air,
avg(group_stays) as avg_group_stays,

avg(age) as avg_age,
avg(nights_per_stay) as avg_nights_per_stay,

avg(distinct_rooms_class_booked) as distinct_rooms_class_booked,
avg(extended_bus_stays) as extended_bus_stays,
avg(extended_les_stays) as extended_les_stays,
/*avg(jum_nights_per_stay) as jum_nights_per_stay,*/
sum(vip_flag) as vip_flag,

avg(rev_rms_per_stay) as avg_rev_rms_per_stay,
avg(avgdys_easter) as avg_avgdys_easter,

avg(distinct_Countries) as distinct_Countries,
sum(weekend_stays) as total_weekend_stays,
sum(weekday_stays) as total_weekday_stays,
sum(distinct_bookings) as tot_visits,
sum(total_revenue) as sum_total_revenue,
avg(avgdys_Eid) as avg_avgdys_Eid,
avg(avgdys_Ramadan) as avg_avgdys_Ramadan

from rr.nonmember_iteration8
group by cluster;
quit;


proc sql;
create table rr.summary_profile2 as select cluster, count(*) as total_count,
sum (country_AE) as total_AE,
sum (country_AU) as total_AU,
sum (country_CH) as total_CH,
sum (country_CN)as total_CN,
sum (country_DE) as total_DE,
sum (country_Others)as total_others,
sum (country_RU) as total_RU,
sum (country_SA) as total_SA,
sum (country_UK) as total_UK,
sum (country_US) as total_US,
sum(visitfav_hotel_1) as  total_1,
sum(visitfav_hotel_2) as  total_2,
sum(visitfav_hotel_4) as  total_4,
sum(visitfav_hotel_6) as  total_6,
sum(visitfav_hotel_7) as  total_7,
sum(visitfav_hotel_8) as  total_8,
sum(visitfav_hotel_23) as  total_23,
sum(visitfav_hotel_24) as  total_24,
sum(visitfav_hotel_27) as  total_27,
sum(visitfav_hotel_28) as  total_28,
sum(visitfav_hotel_42) as  total_42,
sum(visitfav_hotel_61) as  total_61,
sum(visitfav_hotel_62) as  total_62,
sum(visitfav_hotel_63) as  total_63,
sum(visitfav_hotel_64) as  total_64,
sum(visitfav_hotel_65) as  total_65,
sum(visitfav_hotel_66) as  total_66,
sum(visitfav_hotel_67) as  total_67,
sum(visitfav_hotel_68) as  total_68,
sum(visitfav_hotel_71) as  total_71,

sum(visitfav_book_AMA) as TOTAL_AMA,
sum(visitfav_book_CRE) as Total_CRE,
sum(visitfav_book_EMA) as Total_EMA,
sum(visitfav_book_FRO) as Total_FRO,
sum(visitfav_book_GAL) as Total_GAL,
sum(visitfav_book_JUC) as Total_JUC,
sum(visitfav_book_OTH) as Total_OTH,
sum(visitfav_book_OTH_low) as Total_Oth_Low,
sum(visitfav_book_SAL) as Total_SAL,
sum(visitfav_book_SBR) as Total_SBR,
sum(visitfav_book_TEL) as Total_TEL,

sum(avgdys_Arab_Health) as Total_Arab_Health,
sum(avgdys_Chinese_Summer_Holidays) as Total_CSH,
sum(avgdys_Dubai_Shopping_Festival) as Total_DSF,
sum(avgdys_Dubai_Summer_Surprises) as Total_DSS,
sum(avgdys_Easter) as Total_Easter,
sum(avgdys_German_Summer_Holidays) as Total_GSH,
sum(avgdys_Indian_Summer_Holidays) as Total_ISH,
sum(avgdys_Ramadan) as Total_Ramadan,
sum(avgdys_Saudi_Spring_Break) as Total_SSB,
sum(avgdys_Saudi_Summer_Holidays) as Total_SSH,
sum(avgdys_UK_Summer_Holidays) as Total_USH

from rr.nonmember_iteration8
group by cluster;
quit;


/*checking booking source cluster wise*/
proc sql;
create table as book_source as select
fav_book_AMA
fav_book_CRE
fav_book_EMA
fav_book_FRO
fav_book_GAL
fav_book_JUC
fav_book_OTH
fav_book_OTH_low
fav_book_SAL
fav_book_SBR
fav_book_TEL




/*exercise to calculate days between two different visits, (temp file is used from variable creattion table*/

proc sql;
create table temp_member as select 
a.unique_id,a.cluster,b.last_transaction_date,b.first_transaction_date,a.distinct_bookings
from rr.nonmember_iteration8 as a
left join temp as b
on a.unique_id=b.unique_id;
quit;


data temp_member2;
set temp_member;
time_days=last_transaction_date-first_transaction_date;
time_in_visits=time_days/(distinct_bookings-1); 
run;

proc sql;
create table temp_group as select
cluster,count(cluster) as count_cluster,avg(time_in_visits)as avg_time_in_visit
from temp_member2
where time_in_visits ne . and time_in_visits ne 0
group by cluster;
quit;

/*joining value segments on member_iteration8*/

libname aa "I:\Jumeirah_2\Phase2\sasdata\rfm";

proc sql;
create table rr.nonmember_iteration9 as
select a.*, b.value_segment,b.rev_flag from rr.nonmember_iteration8new as a
left join aa.rfm_non_members as b
ON a.unique_id = b.unique_id;
quit;

proc sql;
select count(*) from rr.nonmember_iteration9
where value_segment="";
quit;


proc sql;
select count(*) from rr.nonmember_iteration8
where unique_id not in (select distinct unique_id from aa.rfm_non_members);
quit;


proc sql;
create table rr.nonmembers_value_seg_count as
select cluster,value_segment,count(*)
from  rr.nonmember_iteration9
group by cluster,value_Segment;
quit;




/*getting revenue by fnb, rms,other*/
proc sql;
create table revenue_by_pct as select cluster, count(*) as total_count,
sum(total_revenue) as total_revenue,
sum(total_rev_fnb) as total_rev_fnb,
sum (total_rev_oth)as total_rev_other,
sum (total_rev_rms)as total_rev_rms
from rr.nonmember_iteration8
group by cluster;
quit;



/*creating cluster wise market code*/
proc sql;
create table market_code_cluster as select
cluster,count(*) as cluster_Count,
sum(visitfav_maj_code_AIR) as booking_AIR,
sum(visitfav_maj_code_COR) as booking_COR,
sum(visitfav_maj_code_GRP) as booking_GRP,
sum(visitfav_maj_code_NON) as booking_NON,
sum(visitfav_maj_code_RET) as booking_RET,
sum(visitfav_maj_code_WHL) as booking_WHL
from rr.nonmember_iteration8
group by cluster;
quit;


/*creating total revenue, property wise and staytype=couple*/
proc sql;
create table property as select
resort,sum(tot_rev) as total_revenue
from rr.data2
where stay_type="Couple"
group by resort
;
quit;

