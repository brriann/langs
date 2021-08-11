(* HW1 : Dates, Lists, Options  *)

(* (year,month,day) (1988,02,26)  *)

(* PROBLEM 1  *)
(* takes 2 dates, T/F if 1st date is less/greater than 2nd  *)

fun is_older (date1 : (int * int * int), date2 : (int * int * int)) =
    if #1 date1 < #1 date2
    then true
    else if #2 date1 < #2 date2
    then true
    else if #3 date1 < #3 date2
    then true
    else false

(* PROBLEM 2  *)
(* takes list of dates, int, returns count of dates with matching month  *)

fun number_in_month (dateList : (int * int * int) list, month : int) =
    if null dateList then 0
    else if month = #2 (hd dateList)
    then 1 + number_in_month(tl dateList, month)
    else number_in_month(tl dateList, month)

(* PROBLEM 3  *)
(* take list of dates, list of months (ints), returns # dates that are in any of the months  *)

fun number_in_months (dateList : (int * int * int) list, months : int list) =
    if null months then 0
    else number_in_month(dateList, hd months) + number_in_months(dateList, tl months)
			
(* PROBLEM 4  *)
(* take a list of dates, and a month, and return list of dates from list of dates, that are in the month  *)

fun dates_in_month (dateList : (int * int * int) list, month : int) =
    if null dateList then []
    else if #2 (hd dateList) = month
    then (hd dateList) :: dates_in_month(tl dateList, month)
    else dates_in_month(tl dateList, month)
								  
(* PROBLEM 5  *)
(* take a list of dates, and list of months, and return a list of dates that are in any of the months listed *)

fun dates_in_months (dateList : (int * int * int) list, months : int list) =
    if null months then []
    else dates_in_month(dateList, (hd months)) @ dates_in_months(dateList, (tl months));
	

(* PROBLEM 6  *)
(* take list of strings, int n, return nth elt of list, 1-indexed  *)

fun get_nth (stringList : string list, n : int) =
    (* this is lazy, possibly solve a more insightful way??  *)
    List.nth(stringList, n - 1)

(* PROBLEM 7  *)
(* take a date,return stringified date...  *)
	   
fun date_to_string (date : int * int * int) =
    let val monthList = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    in
	get_nth(monthList, (#2 date)) ^ " " ^ Int.toString(#3 date) ^ ", " ^ Int.toString(#1 date)
    end
	
(* PROBLEM x  *)
(* shortDescription  *)


(* PROBLEM x  *)
(* shortDescription  *)


(* PROBLEM x  *)
(* shortDescription  *)


(* PROBLEM x  *)
(* shortDescription  *)


(* PROBLEM x  *)
(* shortDescription  *)
