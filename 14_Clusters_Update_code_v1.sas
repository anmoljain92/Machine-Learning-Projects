/***********************************************/
/* 1. Code Name:			06_clusters_update_code_v1.sas*/
/* 2. Code Description:		This code will be used to update the segmentation for new data*/
/* 3. Code Author:		Saurabh Singh Tanwar	*/
/* 4. Date:					25/09/2014	*/
/***********************************************/

libname jumadm "I:\Jumeirah_20150406\sasdata\Append";

options center date label notes mprint linesize=80 compress=yes fmtsearch = (jumadm);


libname sasdata "I:\Jumeirah_20150406\sasdata\master_dataset";

/***input list with variables selected for clustering**/
%include "I:\Jumeirah_20150406\code\Clustering_code\clustering_var_list_v3.sas";

/**New dataset location with all the variables***/
libname newdata "I:\Jumeirah_20150406\sasdata\Variable_creation";
/***raw dataset with non-standardized all variables***/
%let raw_allvars_data = newdata.member_iteration5;


/***Cluster centroid data***/
%let cluster_centroids_data = sasdata.cluster_centers_20140915;


/***input list with variables selected for clustering**/
%include "I:\Jumeirah_20150406\code\Clustering_code\clustering_var_list_v3.sas";

/******Libname and path of output dataset and export file with memberlist and segments***/
libname outdata "I:\Jumeirah_20150406\output\clustering_fulldata\member_segemntlist";
%let outpath = I:\Jumeirah_20150406\output\clustering_fulldata\member_segemntlist;
%let outdata_name = Scored_Cluster_data;


/***Data Standardization***/

	/***keeping only relevant variables used for clustering and standardizing them***/
	/**		Var_list is coming from include file with list of variables used for clustering**/
	proc contents data = &raw_allvars_data. (keep = &var_list.) out = var_names;
	run;

	proc sql;
	select name into: varnames separated by " "
	from var_names;
    quit;

	%put &varnames.;

	proc standard data=&raw_allvars_data.(keep = jum_member_id &var_list.) MEAN=0 STD=1 out = std_clustering_data;
	var &varnames.;
	run;
	proc contents data = &syslast ; run;
	proc print data = &syslast (obs = 10); run;

/**/
/*	proc sort data = zz_tmp;*/
/*		by jum_member_id;*/
/*	run;*/
/**appending Unassigned data and centroid data to be able to use distance statement**/
	data for_distance (drop = jum_member_id);
		set &cluster_centroids_data.
			std_clustering_data;
			format member_id $15.;
			member_id = strip("id_"||strip(input(jum_member_id,$12.)));
	run;
	proc contents data = &syslast ; run;
	proc print data = &syslast (obs = 10); run;
%put &var_list.;
/***calculating distance from centroid***/
	proc distance data = for_distance method = euclid out = Cluster_distances (keep = member_id id_1 id_2 id_3 id_4 ) ;
		var interval(&var_list.);
		id member_id;
	run;
	proc contents data = &syslast ; run;
	proc print data = &syslast (obs = 10); run;

	data outdata.&outdata_name. (keep = jum_member_id Lifestyle_segment);
		set Cluster_distances;
			format jum_member_id best12.;
			if member_id in ("id_1", "id_2", "id_3", "id_4") then delete;
				jum_member_id = input(strip(substr(strip(member_id), 4,length(member_id)-3)), best12.);

				if id_1 = min(id_1, id_2, id_3, id_4) then Lifestyle_segment = 1;
					else if id_2 = min(id_1, id_2, id_3, id_4) then Lifestyle_segment = 2;
					else if id_3 = min(id_1, id_2, id_3, id_4) then Lifestyle_segment = 3;
					else if id_4 = min(id_1, id_2, id_3, id_4) then Lifestyle_segment = 4;
		run;
		proc contents data = &syslast ; run;
	proc print data = &syslast (obs = 10); run;

	/**QA check**/
	proc freq data =  OUTDATA.&outdata_name.;
	   tables Lifestyle_segment /list;
	run;


	proc export data =  outdata.&outdata_name.
		outfile = "&outpath./&outdata_name..csv"
		dbms = dlm replace;
		delimiter = ',';
	run;



/*newly added code*/

proc sql;
create table sasdata.i5_joined
as select a.*, b.lifestyle_segment
from indata.member_iteration5 as a
left join outdata.scored_cluster_data as b
on a.jum_member_id=b.jum_member_id;
quit;

