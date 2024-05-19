text = "Hello World";
show_debug_message("complete");
show_debug_message("complete");
show_debug_message("complete");

var _file = file_text_open_read("Player_status.txt");
json_example_string = file_text_read_string(_file);
file_text_close(_file);
json_example_1 = json_decode(json_example_string);

