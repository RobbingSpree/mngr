if day_end.index+dir < day_end.last {
	with (day_end) {
		index ++;
		report = get_update(index);
		report += "\n" + faff_about(index);
	}
	image_index += 1;
}