txt = "Game over!\nSeconds Survived: " + string(obj_master.seconds_survived) + "\nFinal Score: " + string(obj_master.cur_score) + "\nHigh Score: " + string(obj_master.high_score) + "\nCurrent Cash: "  + string(obj_master.cash + round(obj_master.cur_score/10)) + "\nPress R to try again or\nS to go to shop!";
show_txt = "";
char = 1;