index = 0;
last = ds_list_size(board.active)+1;
total_earned = 0;

if room == day_end_room {	
	if last > 0 { //if running any quests at all
		//run progress on all active quests
		for (var i=0; i<last; i++) {
			var temp = ds_list_find_value(board.active,i);
			temp.progress_me();
			report[i] = get_update(i);
			report[i] += "\n" + faff_about(i);
			if temp.progress >= 100 {
				//write update for quest
				report[i] += "\n" + "The quest was compleated successfully";
				//pay out quest money reqard
				report[i] += "\n" + "The Guild earned " + string(temp.money_reward) + " Gold";
				total_earned += temp.money_reward; //for tallying at end of report
				//payout quest xp reqard
				report[i] += "\n" + string(temp.assigned_to.my_name) + " earned " + string(temp.xp_reward) + " XP";
				temp.assigned_to.xp += temp.xp_reward;
				//check for level up
				if temp.assigned_to.xp > 100 {
					temp.assigned_to.level++
					temp.assigned_to.xp -= 100;
					report[i] += " and leveked up to " + string(temp.assigned_to.level)
				}
			}
		}
	} else {
		//if no active quests to advance
		i=0;
		report[i] = "No one did anything useful, but that's what we intended.";
	}
	//add daily cost report to eth end of the report table
	wallet.funds += total_earned;
	report[i+1] = "Money in: " +string(total_earned) +
		"\nMoney Out: " + string(wallet.daily_cost) +
		"\nNew Total Funds" + string(wallet.funds);
}

