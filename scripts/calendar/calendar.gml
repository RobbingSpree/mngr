// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function calendar() constructor{
	static day = 1;
	static month = 1;
	static year = 0;
	
	static next_day = function (){
		day ++;
		if day > 28 {
			day = 1;
			month ++;
			if month > 13 {
				month = 1;
				year ++;
			}
		}
	}
	
}