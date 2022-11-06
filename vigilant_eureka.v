module main

import os
import time

const work_dur = 25 * time.minute
const short_break_dur = 5 * time.minute
const long_break_dur = 20 * time.minute

const update_dur = 20 * time.second

fn main() {
	for {
		for i in 1 .. 4 {
			work()

			if i == 4 {
				break
			}

			short_break()
		}

		long_break()
	}
}

fn work() {
	max := work_dur / update_dur

	for i in 1 .. max {
		println('work: $i / $max')
		time.sleep(update_dur)
		os.system('playerctl next')
		os.system('playerctl position 60')
	}
}

fn short_break() {
	os.system('playerctl pause')
	max := short_break_dur / update_dur

	for i in 1 .. max {
		println('short break: $i / $short_break_dur')
		time.sleep(update_dur)
	}

	os.system('playerctl play')
}

fn long_break() {
	os.system('playerctl pause')
	max := long_break_dur / update_dur

	for i in 1 .. max {
		println('long break: $i / $long_break_dur')
		time.sleep(update_dur)
	}

	os.system('playerctl play')
}
